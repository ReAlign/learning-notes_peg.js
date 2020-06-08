const hanle = require('./handle');
const parser = require('../dist/css-parser.min.js');

hanle({
  parser,
  p1: `${__dirname}/css.css`,
  p2: `${__dirname}/css.json`
});
