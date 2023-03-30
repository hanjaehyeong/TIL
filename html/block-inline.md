# HTML의 요소
HTML의 모든 요소는 해당 요소가 웹 브라우저에 어떻게 보이는지를 결정하는 **display** 속성을 가지게 된다.

**display**의 속성값은 2가지가 있다.<br>
1. 블록(block)
2. 인라인(inline)

# 블록(block)
블록(block)은 언제나 새로운 라인(line)에서 시작한다<br>
**해당 라인의 모든 너비를 차지한다.**
```
블록(block)에는 <p>, <div>, <h>, <form>등이 대표적이다.
```

# 인라인(inline)
인라인(inline)은 새로운 라인에서 시작하지 않는다.<br>
**너비 또한 해당 라인 전체가 아닌 요소의 내용만큼만 차지한다.**<br>
(*width 값을 따로 주지 않아도, 기본적으로 최대 너비로 설정된다.*)

```
인라인(inline)에는 <span>, <a>, <img>등이 대표적이다.
```

# 인라인-블록(inline-block)
인라인-블록(inline-block)은 이름처럼 인라인(inline)과 블록(block)을 합친 것이다.
```
css에

display: inline-block;
을 입력하면 사용할 수 있다.
```

인라인-블록(inline-block)은 인라인(inline)과 같은 너비를 가졌지만 블록(block)처럼 크기와 margin, padding을 적용할 수 있다.

# 블록(block)과 인라인(inline)
1. 인라인(inline)은 크기를 지정할 수 없으므로 width, height로 어떤 값을 줘도 크기에 영향이 없다.
2. 블록(block)은 padding과 margin으로 여백을 상하좌우 다 줄 수 있지만, 인라인(inline)은 좌우만 여백을 줄 수 있다.
3. 블록(block)은 여러개를 사용할 때, 상하로 쌓이고 인라인(inline)은 좌우로 쌓인다.