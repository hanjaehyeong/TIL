# Generic

타입에 의존하지 않는 범용 코드를 작성할 때 사용.

Generic을 사용하면 중복을 피하고, 코드를 유연하게 작성할 수 있다.

```swift
//swift는 타입에 민감하므로 타입별로 함수를 생성해줘야 한다.
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
   let tempA = a
   a = b
   b = tempA
}

func swapTwoDoubles(_ a: inout Double, _ b: inout Double) {
   let tempA = a
   a = b
   b = tempA
}

func swapTwoStrings(_ a: inout String, _ b: inout String) {
   let tempA = a
   a = b
   b = tempA
}
```

```swift
//Generic을 사용하면 타입에 제한을 두지 않고 사용할 수 있다.

func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
   let tempA = a
   a = b
   b = tempA
}

//<>를 이용해 타입처럼 사용할 이름을 선언해주면 해당 이름(T)을 타입처럼 사용할 수 있다.
//이 T를 Type Parameter라고 부른다.
//T라는 새로운 형식이 생성되는 것이 아님
//실제 함수가 호출될 때 해당 매개변수의 타입으로 대체되는 Placeholder.

var someInt = 1
var aotherInt = 2
swapTwoValues(&someInt,  &aotherInt) // 함수 호출 시 T는 Int 타입으로 결정됨
 
 
var someString = "Hi"
var aotherString = "Bye"
swapTwoValues(&someString, &aotherString) // 함수 호출 시 T는 String 타입으로 결정됨

swapTwoValues(&someInt, &aotherString) //에러(파라미터 타입은 통일돼야 함)
```

---

## 제네릭 타입(Generic Type)

제네릭을 이용한 함수를 제네릭 함수라고 한다.

구조체, 클래스, 열거형 타입에 선언하면 제네릭 타입이라고 한다.

```swift
struct Stack<T>{
	let items: [T] = []

	mutating func push(_ item: T) {...}
	mutating func pop() -> T { ... }
}
```

---

## 타입 제약(Type Constraints)

제네릭 함수와 타입을 사용할 때 특정 클래스의 하위 클래스나, 특정 프로토콜을 준수하는 타입만 받을 수 있게 제약을 둘 수 있다.

1. 프로토콜 제약

```swift
func isSameValues<T>(_ a: T, _ b: T) -> Bool {
    return a == b //오류
}
//== 이란 연산자는, a와 b의 타입이 Equatable이란 프로토콜을 준수할 때만 사용할 수 있음
//a와 b가 다른 타입일 수도 있으므로 사용 불가

func isSameValues<T: Equatable>(_ a: T, _ b: T) -> Bool {
    return a == b               
}
//T: Equatable으로 제약을 줄 수 있음(같은 타입의 파라미터만 받겠다.)

//Numeric으로 숫자와 관련된 타입으로만 제한을 둠
func plus<T: Numeric>(a: T, b: T) -> T {
	return a + b
}

//2개 이상 제약을 둘 경우 밖에 쓰기
//Comparable로 a와 b가 비교가 가능하게
func plus<T>(a: T, b: T) -> T where T: Numeric, T: Comparable{
	if a > b{
		print("a")
	}
	return a + b
}
```

2. 클래스 제약
```swift
class Bird { }
class Human { }
class Teacher: Human { }

func printName<T: Human>(_ a: T) { }


let bird = Bird.init()
let human = Human.init()
let teacher = Teacher.init()
 
//Human 클래스의 인스턴스인 human
//Human 클래스를 상속 받은 teacher은
//printName이라는 제네릭 함수를 실행할 수 있다.
printName(bird) //오류 
printName(human)
printName(teacher)
```