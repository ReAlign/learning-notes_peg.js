const fs = require('fs');
const Parser = require('./../dist/css-check-parser');

fs.readFile(`${__dirname}/check.css`, 'utf-8', (err, data) => {
    if (err) {
        console.log(err);
    } else {
        try {
            const obj = Parser.parse(data);
            console.log(obj);
            const objStr = JSON.stringify(obj, null, 2);
            fs.writeFile(`${__dirname}/check.json`, objStr, (err) => {
                if (err) {
                    console.log(err);
                }
            })
        } catch (e) {
            console.log(e);
        }
    }
})