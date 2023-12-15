import app from './app.js';
import { PORT } from './config.js';
import ngrok from 'ngrok';

app.listen(PORT, () => {
    console.log(`Servidor Express corriendo en el puerto ${PORT}`);
    console.log(">> Backend conectado correctamente <<");
});