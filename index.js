const express = requiere('express');
const app = express();
app.get('/', (req, res) => res.send('Hola Carajin!!'));
app.listen(3000, () => console.log(Servidor ejecutandose en el puerto 3000'));
