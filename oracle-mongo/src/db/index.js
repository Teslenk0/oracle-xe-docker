const mongo = require("./mongo");
const oracle = require("./oracle");
const config = require("../config/config");

const mongoConfig = config.get("MONGO");
const oracleConfig = config.get("ORACLE");

module.exports = {
  async inicializarConexionesDB() {
    if (mongoConfig.activa && mongoConfig.uri) {
      await mongo.connect(mongoConfig.uri);
    }

    if (oracleConfig.activa) {
      oracle.connect(oracleConfig);
    }
  },
  obtenerInstanciaKnex: oracle.obtenerInstanciaKnex
};
