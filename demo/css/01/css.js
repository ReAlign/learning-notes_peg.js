const hanle = require('./../../handle');
const parser = require('./css-parser.js');

hanle({
  parser,
  p1: `${__dirname}/css.css`,
  p2: `${__dirname}/css.json`
});
