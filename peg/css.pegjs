StartRule
  = css:(CSS) {
    const selectors = [];

    css.forEach(sel => {
      // console.log('sel');
      // console.log(sel);
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

// 名称
NameWords "名称"
  = word:WordChars+ {
    return word.join('');
  }

// 字母 | 数字 | . | _ | -
WordChars "组成名称的字符集"
  = [a-zA-Z0-9._-]

// 字母 | 数字 | _ | -
WordWithNumeric "值"
  = word:WordCharsNumericColor+ {
    return word.join('');
  }

// # | 字母 | 数字 | .
WordCharsNumericColor "组成值的字符集"
  = [#a-zA-Z0-9.]

WSS "空格"
  = [ \t]*

LBS "换行"
  = [\r\n]*

TYPES "选择器标识"
  = [#|.]

EMPTYS "空白字符集"
  = LBS WSS

ITEMS "单个选择器"
//   0      1         2      3   4      5               6      7   8
  = (EMPTYS NameWords EMPTYS ':' EMPTYS WordWithNumeric EMPTYS ';' EMPTYS)*

CSS "所有选择器"
//   0      1            2         3      4   5     6   7
  = (EMPTYS type:(TYPES) selector:(NameWords) EMPTYS '{' items:(ITEMS) '}' EMPTYS)*


// StartRule
//   = css:(CSS) {
//     const selectors = [];

//     css.forEach(sel => {
//       // console.log('sel');
//       // console.log(sel);

//       // sel[1] => .|#
//       // sel[2] => selector
//       // sel[5] => array[]
//       const obj = {
//         type: sel[1],
//         selector: sel[2],
//         items: []
//       };
//       sel[5].forEach(x => {
//         obj.items.push({
//           property: x[1],
//           value: x[5]
//         });
//       });

//       selectors.push(obj);
//     });

//     return selectors;
//   }

// // 名称
// NameWords "名称"
//   = word:WordChars+ {
//     return word.join('');
//   }

// // 字母 | 数字 | . | _ | -
// WordChars "组成名称的字符集"
//   = [a-zA-Z0-9._-]

// // 字母 | 数字 | _ | -
// WordWithNumeric "值"
//   = word:WordCharsNumericColor+ {
//     return word.join('');
//   }

// // # | 字母 | 数字 | .
// WordCharsNumericColor "组成值的字符集"
//   = [#a-zA-Z0-9.]

// WSS "空格"
//   = [ \t]*

// LBS "换行"
//   = [\r\n]*

// TYPES "选择器标识"
//   = [#|.]

// EMPTYS "空白字符集"
//   = LBS WSS

// ITEMS "单个选择器"
// //   0      1                    2   3   4   5                       6   7   8
//   = (EMPTYS property:(NameWords) WSS ':' WSS value:(WordWithNumeric) WSS ';' EMPTYS)*

// CSS "所有选择器"
// //   0      1     2                    3      4   5             6   7
//   = (EMPTYS TYPES selector:(NameWords) EMPTYS '{' items:(ITEMS) '}' EMPTYS)*
