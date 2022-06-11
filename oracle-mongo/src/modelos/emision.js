const mongoose = require("mongoose");

const { Schema } = mongoose;

const categoriaSchema = new Schema({
  categoria: {
    type: String,
    required: true,
  },
  categoriaPadre: {
    type: String,
    required: true,
  },
});

const visualizadorSchema = new Schema({
  usuario: {
    type: String,
    maxLength: 128,
    required: true,
  },
  paisOrigen: {
    type: String,
    required: true,
  },
});

const mensajeChatSchema = new Schema({
  fechaEnvio: {
    type: Date,
    required: true,
  },
  usuario: {
    type: String,
    maxLength: 128,
    required: true,
  },
  textoMsj: {
    type: String,
    required: true,
  },
});

const emisionSchema = new Schema({
  usuario: {
    type: String,
    maxLength: 128,
    required: true,
  },
  titulo: {
    type: String,
    required: true,
  },
  fechaInicioEmision: {
    type: Date,
    required: true,
  },
  fechaFinEmision: {
    type: Date,
  },
  tiempoDeEmision: {
    type: Number,
  },
  cantEspectadoresMax: {
    type: Number,
  },
  calidadEmision: {
    type: String,
    enum: ["UHD", "QHD", "1080p60", "720p60", "480p", "360p", "160p"],
    required: true,
  },
  esPublico: {
    type: Boolean,
  },
  categorias: {
    type: [categoriaSchema],
  },
  visualizadoresEnVivo: {
    type: [visualizadorSchema],
  },
  visualizadoresOnDemand: {
    type: [visualizadorSchema],
  },
  mensajesChat: {
    type: [mensajeChatSchema],
  },
});

const Emision = mongoose.model("emisiones", emisionSchema, "emisiones");

module.exports = { Emision };
