const hanle = require('./handle');
const parser = require('./../dist/css-check-parser.min.js');

hanle({
  parser,
  p1: `${__dirname}/check.css`,
  p2: `${__dirname}/check.json`
});
