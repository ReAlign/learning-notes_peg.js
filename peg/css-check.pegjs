StartRule
  = css:(CSS) {
    const selectors = [];

    css.forEach(sel => {
      // console.log('sel');
      // console.log(sel);

      // sel[1] => .|#
      // sel[2] => selector
      // sel[5] => array[]
      const obj = {
        type: sel[1],
        selector: sel[2],
        items: []
      };
      sel[5].forEach(x => {
        obj.items.push({
          property: x[1],
          value: x[5]
        });
      });

      selectors.push(obj);
    });

    return selectors;
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
  = [a-zA-Z0-9_-]

ALPHA_NUMERIC_CHARS
  = [#a-zA-Z0-9]

WS "whitespace"
  = [ \t]

WSS "whitespaces"
  = WS*

LB "Linebreak"
  = [\r\n]

LBS "Linebreaks"
  = LB*

TYPES
  = [#|.]

EMPTYS "空白字符合辑"
  = LBS WSS

ITEMS ""
  = (EMPTYS property:(Word) WSS ':' WSS value:(WordWithNumeric) WSS ';' EMPTYS)*

CSS
  = (EMPTYS TYPES selector:(Word) EMPTYS '{' items:(ITEMS) '}'EMPTYS)*
