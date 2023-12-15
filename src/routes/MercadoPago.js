import express from 'express';
import mercadopago from 'mercadopago';
import db from '../db.js';

const router = express.Router();


mercadopago.configure({
    access_token: "TEST-2550155760366803-112315-85a9859690c381dc1a3acf947d087769-1561246425",
});


router.post("/checkout", async (req, res) => {
    console.log("Request Body:", req.body);
    try {
        const preference = {
            items: req.body.items.map(item => ({
                title: item.description,
                unit_price: Number(item.price),
                quantity: Math.floor(Number(item.quantity)),
            })),
            payer: {
                name: req.body.firstName,
                surname: req.body.lastName,
                email: req.body.email,
                phone: {
                    area_code: "56",
                    number: Number(req.body.phone),
                },
                address: {
                    zip_code: req.body.postalCode || "0",
                    street_name: req.body.adress || "Calle falsa",
                    street_number: Number(req.body.adressLine) || 0,
                },
            },
            back_urls: {
                success: "http://localhost:5173/success",
                failure: "http://localhost:5173/failure",
            },
            notification_url: "https://dc56-200-72-240-47.ngrok-free.app/webhook",
            auto_return: 'approved',
        };
        const respuesta = await mercadopago.preferences.create(preference);

        // Guardar la información en la base de datos
        const order = {
            collector_id: respuesta.response.collector_id,
            preference_id: respuesta.response.id,
            user_id: req.body.user_id,
            status: 'pending', // El estado inicial de la orden es "pendiente"
        };

        // Insertar la orden en la base de datos
        const insertOrder = () => {
            return new Promise((resolve, reject) => {
                const sqlOrder = 'INSERT INTO orders SET ?';
                db.query(sqlOrder, order, (err, result) => {
                    if (err) {
                        reject(err);
                    } else {
                        resolve(result.insertId);
                    }
                });
            });
        };

        // Insertar los detalles de la orden en la base de datos
        const insertOrderItems = (orderId) => {
            const orderItems = req.body.items.map(item => ({
                order_id: orderId,
                product_description: item.description,
                price: item.price,
                quantity: item.quantity,
            }));

            return new Promise((resolve, reject) => {
                const sqlOrderItems = 'INSERT INTO order_items SET ?';
                db.query(sqlOrderItems, orderItems, (err, result) => {
                    if (err) {
                        reject(err);
                    } else {
                        resolve(result);
                    }
                });
            });
        };

        const insertShippingDetails = (orderId) => {
            const shippingDetails = {
                order_id: orderId,
                nombre: req.body.firstName,
                apellido: req.body.lastName,
                correo: req.body.email,
                telefono: req.body.phone,
                metodo_envio: req.body.shippingMethod,
                region: req.body.selectedRegion,
                comuna: req.body.selectedComuna,
                codigo_postal: req.body.postalCode,
                direccion: req.body.address,
                numero_casa: req.body.addressLine,
            };
            return new Promise((resolve, reject) => {
                const sqlShippingDetails = 'INSERT INTO shipping_details SET ?';
                db.query(sqlShippingDetails, shippingDetails, (err, result) => {
                    if (err) {
                        reject(err);
                    } else {
                        resolve(result);
                    }
                });
            });
        };

        // Realizar las operaciones de la base de datos de forma sincrónica
        const orderId = await insertOrder();
        await insertOrderItems(orderId);
        await insertShippingDetails(orderId);

        // Responder con el init_point de la preferencia
        res.status(200).json(respuesta.response.init_point);

    } catch (error) {
        console.error(error.message)
        res.status(500).json(error.message)
    }
});


router.post("/webhook", async (req, res) => {
    try {
        const payment = req.query;
        if (payment.type === "payment") {
            const data = await mercadopago.payment.findById(payment["data.id"]);
            // Obtener el identificador de la preferencia desde la respuesta del webhook
            const collectorId = data.body.collector_id
            console.log("collector_id: ", collectorId);

            const updateOrderStatus = (collectorId, newStatus) => {
                return new Promise((resolve, reject) => {
                    const sqlUpdateOrder = 'UPDATE orders SET status = ? WHERE collector_id = ?';
                    db.query(sqlUpdateOrder, [newStatus, collectorId], (err, result) => {
                        if (err) {
                            reject(err);
                        } else {
                            resolve(result);
                        }
                    });
                });
            };

            // Actualizar el estado de la orden en la base de datos (por ejemplo, a "aprobado")
            await updateOrderStatus(collectorId, 'approved');

            console.log("El estado de la orden ha sido actualizado a 'aprobado'");
            res.status(200).send("Estado de la orden actualizado correctamente");
        } else {
            res.status(400).send("Tipo de pago no válido");
        }
    } catch (error) {
        console.error("Error en el webhook:", error);
        res.status(500).send("Error interno del servidor");
    }
});


router.get("/success", async (req, res) => {
    try {
        const paymentId = req.query.payment_id;
        const paymentStatus = req.query.status;

        const transactionDetails = {
            paymentId,
            paymentStatus,
        };
        console.log(paymentId)
        console.log(paymentStatus)

        // Devuelve los detalles al frontend
        res.json({ success: true, transactionDetails });
    } catch (error) {
        console.error(error);
        res.status(500).json({ success: false, error: "Error al obtener detalles del pago" });
    }
});

router.get("/failure", (req, res) => {
    res.send("Pago fallido");
});
export default router;

