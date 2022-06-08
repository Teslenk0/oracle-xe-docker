const debug = require("debug")("app:config");
const _ = require("lodash");
const nconf = require("nconf");

const config = require('./config.json');

nconf.argv().env();

const nodeEnv = nconf.get("ENVIRONMENT")
  ? nconf.get("ENVIRONMENT").toLowerCase()
  : "dev";

nconf.defaults(config[nodeEnv]);

debug(`Running with ${nodeEnv} Environment Variables`);

module.exports = nconf;