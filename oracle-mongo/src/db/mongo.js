const debug = require("debug")("app:databases:mongo");
const mongoose = require("mongoose");
const config = require("../config/config");

const mongo = config.get("MONGO");

Object.keys(mongo.options || {}).forEach((key) => {
  mongoose.set(key, mongo.options[key]);
});

mongoose.Types.ObjectId.prototype.view = function () {
  return { id: this.toString() };
};

mongoose.connection.on("error", (err) => {
  debug(`Error al intentar conectarse a MongoDB: ${err}`);
  process.exit(-1);
});

mongoose.connection.on("connected", () => {
  debug(`Conexion exitosa a MongoDB`);
});

module.exports = mongoose;