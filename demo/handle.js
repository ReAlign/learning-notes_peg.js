const fs = require('fs');

module.exports = (options = {}) => {
  const {
    parser = null,
    p1 = '',
    p2 = '',
    hook = null,
  } = options;

  fs.readFile(p1, 'utf-8', (err, data) => {
    if (err) {
      console.log(err);
    } else {
      try {
        let oriData = data;
        if(hook) {
          oriData = hook(oriData);
        }
        let result = parser.parse(oriData);

        const _t = typeof result;
        if(_t !== 'object' || _t !== 'array') {
          result = { result };
        }
        const objStr = JSON.stringify(result, null, 2);
        fs.writeFile(p2, objStr, (err) => {
          if (err) {
            console.log(err);
          }
        })
      } catch (e) {
        console.log(e);
      }
    }
  });
};
