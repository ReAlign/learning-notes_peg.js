/**
 items = [
  [
    [ [], [] ],
    "margin-top",
    [],
    ":",
    [],
    "72px",
    [],
    ";",
    [ [], [] ]
  ]
]
 */
StartRule
    = EMPTYS'.'selector:(Word) EMPTYS '{' items:(ITEMS) '}'EMPTYS {
        const arr = [];

        items.forEach(x => {
            arr.push({
                property: x[1],
                value: x[5]
            });
        });

        return {
            selector,
            items: arr
        };
    }

Word
    = l:AlphaChars+ {
        return l.join('');
    }

WordWithNumeric
    = l:ALPHA_NUMERIC_CHARS+ {
        return l.join('');
    }

AlphaChars
    = [a-zA-Z\_\-]

ALPHA_NUMERIC_CHARS
    = [a-zA-Z0-9]

WS "whitespace"
    = [ \t]

WSS "whitespaces"
    = WS*

LB "Linebreak"
    = [\r\n]

LBS "Linebreaks"
    = LB*

EMPTYS "空白字符合辑"
    = LBS WSS

ITEMS ""
    = (EMPTYS property:(Word) WSS ':' WSS value:(WordWithNumeric) WSS ';' EMPTYS)+