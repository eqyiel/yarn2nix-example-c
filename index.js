const { name } = require('./package.json');
const { capitalize } = require('lodash');

module.exports = () => capitalize(`this is ${name}`);
