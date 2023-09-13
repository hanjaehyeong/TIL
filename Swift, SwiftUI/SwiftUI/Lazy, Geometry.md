## LazyV(H)Grid

열과 행을 가진 리스트이다.

grid를 사용할 때에는 LazyVGrid와 LazyHGrid 이 2개로 나뉜다.

LazyVGrid는 columns(열)을 설정해 줘야한다.

→ 세로로 생기기 때문에

LazyHGrid는 rows(행)를 설정해 줘야한다.

→ 가로로 생기기 때문에

## LazyV(H)Stack

기본 V(H)Stack과의 차이점

1. 기본적으로 차지하는 면적
2. 로드 시점 → Lazy 친구들은 화면에 보일 때 렌더링 된다.

## GeometryReader

*A container view that defines its content as a function of its own size and coordinate space.*

(자체 크기 및 좌표 공간의 함수로 콘텐츠를 정의하는 컨테이너 뷰)

```swift
GeometryReader { geometry in //geometry는 GeometryProxy(범위 내에서 인수로 사용 가능)
	// 이 geometry라는 변수를 이용해 도형이나 Stack등의 크기에 접근할 수 있다.
}
```