const fs = require('fs');

const { inicializarConexionesDB, obtenerInstanciaKnex } = require('./db');
const EmisionesServicio = require('./servicios/emisiones.servicio');

const main = async () => {
    await inicializarConexionesDB();

    const knex = obtenerInstanciaKnex();

    knex.select().from("USUARIO").asCallback(function(err, rows){
        if(err)
            console.log(err);
        else
            console.table(rows);
    });
    
    const emisionesServicio = new EmisionesServicio();

    const res = emisionesServicio.obtenerEmisiones();

    fs.writeFileSync('./data/emisiones.json', JSON.stringify(res), 'utf-8');
}

module.exports = main;