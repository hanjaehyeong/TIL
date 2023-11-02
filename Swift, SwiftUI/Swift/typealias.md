# typealias

alias : 가명, 별명, 통칭

typealias는 alias의 뜻대로 타입에 가명을 붙여주는 것이다.

```swift
struct Model: Codable {
	var name: String
	var age: Int
}

//위 코드에서 Codable은 typealias로 작성된 프로토콜이다.
typealias Codable = Decodable & Encodable
```

typealias를 사용하면 긴 코드를 간결하게 만들 수 있게 해준다.

typealias 사용처

1. 여러 프로토콜을 하나로 합칠 때
2. 클로저를 매개 변수로 사용할 때

```swift
typealias Handler = (Int) -> (String)

func Function(value: Handler){
}
```

등 다양한 곳에서 사용한다.