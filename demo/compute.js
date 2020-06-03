const hanle = require('./handle');
const parser = require('./../dist/compute-parser.min.js');

hanle({
  parser,
  p1: `${__dirname}/compute.txt`,
  p2: `${__dirname}/compute.json`,
  hook: (str = '') => {
    return str.replace(/\n/g, '').replace(/\s*/g, '');
  }
});
