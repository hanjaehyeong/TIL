# flexbox란?
flexbox는 행과 열 형태로 항목 무리를 배치하는 일차원 레이아웃 메서드이다.<br>
flexbox를 1차원이라 칭하는 것은, 레이아웃을 다룰 때 한 번에 하나의 차원(행이나 열)만을 다룬다는 뜻이다.<br>
이는 행과 열을 함께 조절하는 CSS 그리드 레이아웃의 2차원 모델과는 차이가 있다.

# flexbox 사용법
```
css

display: flex;
또는
display: inline-flex

(둘의 차이 : flex는 블록(block)속성 처럼 flex container가 상하로 쌓이고
flex-inline은 인라인(Inline)속성 처럼 수평으로 쌓인다.)
```

# flexbox의 축
flexbox를 다루려면 주축(main)과 교차축(cross)에 대해 알아야 한다.

## 주축
주축은 `flex-direction`에 의해 정의되며 4개의 값을 가질 수 있습니다.

- row
- row-reverse
- column
- column-reverse

`row` 혹은 `row-reverse`를 사용하면 주축은 인라인 방향으로 행 방향을 따른다.

![row](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Basic_Concepts_of_Flexbox/basics1.png)

`column` 혹은 `column-reverse`를 사용하면 주축은 상단에서 하단으로 열 방향을 따른다.

![column](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Basic_Concepts_of_Flexbox/basics2.png)

## 교차축
교차축은 주축에 수직인 축으로 결정됩니다.<br>

만약 주축이 `row`나 `row-reverse`라면 교차축은 열 방향을 따른다.

![교차축 row](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Basic_Concepts_of_Flexbox/basics3.png)

만약 주축이 `column`나 `column-reverse`라면 교차축은 행 방향을 따른다.

![교차축 column](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Basic_Concepts_of_Flexbox/basics4.png)

### **reverse의 차이**
`row`와 `row-reverse`의 차이는 아이템 추가시 추가되는 위치가 다르다<br>
`row`는 오른쪽부터 `row-reverse`는 왼쪽부터 추가된다.<br>
`column`과 `column-reverse`도 마찬가지 이다.<br>
`column`은 위에서 부터 `column-reverse`은 아래서 부터 추가된다.

# flex container
문서의 영역 중에서 flexbox가 놓여있는 영역을 flex container라고 부릅니다.<br>
![flex](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Flexbox/flex_terms.png)<br> 
flex container를 생성하려면 영역 내의 container 요소의 display 값을 flex 혹은 inline-flex로 지정합니다.<br>
이 값이 지정된 컨테이너의 일차 자식(direct children) 요소가 flex item(항목)이 됩니다.<br> 
display 속성만 지정하여 flex container를 생성하면 다른 flex 관련 속성들은 아래처럼 기본 값이 지정됩니다.

- flex item(항목)은 행으로 나열
- flex item(항목)은 주축의 시작 선에서 시작
- flex item(항목)은 주 차원 위에서 늘지는 않지만 줄 수 는 있음
- flex-basis(flex item(항목)의 초기 크기 설정) 속성은 auto로 지정됩니다.
- flex-wrap(flex item(항목)의 배치 표현) 속성은 nowrap으로 지정됩니다.

이렇게되면 flex item(항목)들은 각 항목 별 내부 요소의 크기로 주축을 따라 정렬된다.<br>
container의 크기보다 더 많은 flex item(항목)이 있을 경우 행을 바꾸지 않고 주축 방향으로 흘러 넘치게 된다.<br> 
어떤 항목이 다른 flex item(항목)보다 높이 값이 크다면 나머지 모든 flex item(항목)들은 그에 맞게 교차축을 따라 늘어나게 된다.

[flexboxfoggy](https://flexboxfroggy.com/#ko)를 통해 flexbox 꼭 연습
