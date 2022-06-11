const debug = require("debug")("app:services:users");
const { obtenerInstanciaKnex } = require("../db");
const { Emision } = require("../modelos/emision");
const { Usuario } = require("../modelos/usuario");

class EmisionesServicio {
  constructor() {
    this._knex = obtenerInstanciaKnex();
    this._emisionModel = Emision;
  }

  async obtenerEmisionesPorFecha(fechaDeEmision) {
    const fecha = new Date(fechaDeEmision);

    const emisiones = await this._emisionModel.find({
      fechaInicioEmision: {
        "$gte": fecha,
        "$lt": new Date(fechaDeEmision).setDate(fecha.getDate() + 1)
      },
    });

    const usuarios = emisiones.map((emision) => emision.usuario);

    const datosUsuarios = await this._knex
      .select()
      .from("USUARIO")
      .whereIn("NOMBREUSUARIO", usuarios);

    const resultado = emisiones.map((emision) => {
      const datosUsuario = datosUsuarios.find(
        (usuario) => usuario.NOMBREUSUARIO === emision.usuario
      );

      return {
        ...emision.toObject(),
        datosUsuarioEmite: new Usuario(datosUsuario),
      };
    });

    return resultado;
  }
}

module.exports = EmisionesServicio;
