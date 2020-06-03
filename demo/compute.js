const hanle = require('./handle');
const parser = require('./../dist/compute-parser');

hanle({
  parser,
  p1: `${__dirname}/compute.txt`,
  p2: `${__dirname}/compute.json`,
  hook: (str = '') => {
    return str.replace(/\n/g, '').replace(/\s*/g, '');
  }
});
