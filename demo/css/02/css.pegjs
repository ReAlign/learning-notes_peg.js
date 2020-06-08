Start
//       0   1    2      3   4      5    6      7   8      9          10     11  12     13
  = css:('.' Word Emptys '{' Emptys Word Emptys ':' Emptys WordNumber Emptys ';' Emptys '}') {
    return {
      selector: css[1],
      property: css[5],
      value: css[9]
    }
  }

Emptys "空白字符集"
 = [ \t\r\n]*

Word "英文字母集"
  = char:Letter+ {
    return char.join('');
  }
Letter "英文字母"
  = [a-zA-Z]

WordNumber
  = char:LetterOrNumber+ {
    return char.join('');
  }

LetterOrNumber
  = [a-zA-Z0-9]
