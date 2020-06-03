const fs = require('fs');
const Parser = require('./../dist/java-bean-parser');

fs.readFile(`${__dirname}/bean.java`, 'utf-8', (err, data) => {
    if (err) {
        console.log(err);
    } else {
        try {
            const obj = Parser.parse(data);
            const objStr = JSON.stringify(obj, null, 2);
            fs.writeFile(`${__dirname}/bean.json`, objStr, (err) => {
                if (err) {
                    console.log(err);
                }
            })
        } catch (e) {
            console.log(e);
        }
    }
})
