# self, Self
self는 자기 자신을 가리킬 때 쓴다.

self를 쓰는 상황

1. 인스턴스 내에 같은 이름을 가진 변수가 있는 경우

```swift
Class A{
	var age: Int
	init(age: Int){
		self.age = age
	}
}
```

2. 값 타입의 인스턴스 자체의 값을 치환하기 위해

```swift
struct A {
    var number = 0
    mutating func reset(){
        self = A() //self는 인스턴스를 가리킴
    }
}
var a = A()
a.number = 10
a.number //10
a.reset()
// a에 
//struct A {
//    var number = 0
//    mutating func reset(){
//        self = A() //self는 인스턴스를 가리킴
//    }
//}
//를 적용시킨 것
a.number //0
```

---

Self는

Protocol 내부에서 쓰였을 때는 해당 프로토콜을 채택한 타입을 의미한다.

클래스, 구조체에서 쓰였을 때는 해당 인스턴스의 타입을 나타낸다.(메서드에서 리턴값으로만 사용이 가능하다.)

```swift
Class A{
	func a() -> Self{
		return self
	}
}
Class B : A {}

let h = A()
h.a() //A

let j = B()
j.a() //B

// Self 즉 들어온 타입 A면 A, B면 B의 타입을 반환한다.
// return self는 각각의 인스턴스를 반환한다.
// 따라서 h는 A 타입이므로 A, j는 B 타입이므로 B를 반환한 것이다.
```

---

```swift
Self는 타입 프로퍼티와 타입 메서드를 가리킬 때 사용되고,
self는 인스턴스 프로퍼티와 인스턴스 메서드를 가리킬 때 사용된다
```