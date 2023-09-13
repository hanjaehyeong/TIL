# LazyV(H)Grid, LazyV(H)Stack

grid를 사용할 때에는 LazyVGrid와 LazyHGrid 이 2개로 나뉜다.

LazyVGrid는 columns(열)을 설정해 줘야한다.

→ 세로로 생기기 때문에

LazyHGrid는 rows(행)를 설정해 줘야한다.

→ 가로로 생기기 때문에

LazyV(H)Stack과 V(H)Stack과의 차이점

1. 기본적으로 차지하는 면적
2. 로드 시점 → Lazy 친구들은 화면에 보일 때 렌더링 된다.
---
# GeometryReader

*A container view that defines its content as a function of its own size and coordinate space.*

(뷰 컨테이너이다. 정의하는 자기의 콘텐츠를 그것 자신의 사이즈와 동등한 공간을 함수로써)

```swift
GeometryReader { geometry in
	// 이 geometry라는 변수를 이용해 도형이나 Stack등의 크기에 접근할 수 있다.
}
```