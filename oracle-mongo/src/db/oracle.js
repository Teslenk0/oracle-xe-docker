let INSTANCIA_KNEX = null;
module.exports = {
  connect: (oracleConfig) => {
    INSTANCIA_KNEX = require("knex")({
      client: "oracledb",
      debug: true,
      native: false,
      connection: {
        user: oracleConfig.username,
        password: oracleConfig.password,
        requestTimeout: 10000,
        connectString: `(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=${oracleConfig.host})(Port=${oracleConfig.port}))(CONNECT_DATA=(SID=xe)))`,
      },
    });
  },
  obtenerInstanciaKnex() {
    return INSTANCIA_KNEX;
  },
};
