const hanle = require('./handle');
const parser = require('./../dist/java-bean-parser.min.js');

hanle({
  parser,
  p1: `${__dirname}/bean.java`,
  p2: `${__dirname}/bean.json`
});
