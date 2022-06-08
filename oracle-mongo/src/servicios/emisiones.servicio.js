const debug = require("debug")("app:services:users");
const { obtenerInstanciaKnex } = require("../db");

class EmisionesServicio {
  constructor() {
    this._knex = obtenerInstanciaKnex();
  }

  obtenerEmisiones() {
    return {};
  }
}

module.exports = EmisionesServicio;
