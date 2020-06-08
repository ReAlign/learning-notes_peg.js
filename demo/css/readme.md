# Simple-Css

## 基础

```css
.SELECTOR {
  PROPERTY: VALUE;
}
```

**simple-css** 规则：

* **EMPTY_CHARS**
  * 任意数量的：[`' '` | `\t` | `\n` | `\r`]
* `simple-css` 中，任何 **[EMPTY_CHARS]** 都只作为 **增加可读性**，不作为有效语法
* 只能以 `.` 开头
* 后面紧跟选择器名称 `SELECTOR`
  * `SELECTOR` 只能由英文字母组成
  * `SELECTOR` 后面 `EMPTY_CHARS`，然后是 `{`
* `{` 之后 `EMPTY_CHARS`
* `PROPERTY` 只能由英文字母组成
  * `PROPERTY` 后面 `EMPTY_CHARS`
* 然后再出现冒号 `:`
* `:` 后面 `EMPTY_CHARS`，然后再出现 `VALUE`，`VALUE` 只能由英文字母和数字组成
* `VALUE` 后面 `EMPTY_CHARS`，然后是分号 `;`
* 最后是 `}`，后面 `EMPTY_CHARS`

基于以上规则，要实现的是：

* EMPTY_CHARS
* SELECTOR
* PROPERTY
* VALUE

的校验，以及 固定字符的匹配。

