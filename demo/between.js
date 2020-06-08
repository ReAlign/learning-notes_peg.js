const hanle = require('./handle');
const parser = require('./../dist/between-parser.min.js');

hanle({
  parser,
  p1: `${__dirname}/between.txt`,
  p2: `${__dirname}/between.json`
});
