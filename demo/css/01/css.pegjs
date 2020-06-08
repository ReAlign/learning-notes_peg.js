Start
//       0   1     2  3    4   5          6   7
  = css:('.' Word '{' Word ':' WordNumber ';' '}') {
    console.log(css);
    return {
      selector: css[1],
      property: css[3],
      value: css[5]
    }
  }

Word "英文字母集"
  = char:Letter+ {
    return char.join('');
  }
Letter "英文字母"
  = [a-zA-Z]

WordNumber "字母数字集"
  = char:LetterOrNumber+ {
    return char.join('');
  }

LetterOrNumber "字母数字"
  = [a-zA-Z0-9]
