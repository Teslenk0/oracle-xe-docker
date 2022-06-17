const fs = require('fs');

const { inicializarConexionesDB } = require('./db');
const EmisionesServicio = require('./servicios/emisiones.servicio');

const main = async (args) => {
    const { fechaEmision } = args;

    await inicializarConexionesDB();
    
    const emisionesServicio = new EmisionesServicio();

    const res = await emisionesServicio.obtenerEmisionesPorFecha(fechaEmision);

    fs.writeFileSync('./data/emisiones.json', JSON.stringify(res), 'utf-8');

    console.log("Se escribio el archivo data/emisiones.json con el resultado");

    process.exit(0);
}

module.exports = main;