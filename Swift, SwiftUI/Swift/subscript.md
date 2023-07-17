# subscript
클래스, 구조체, 열거형에서 시퀀스의 맴버 요소에 접근하기 위한 바로가기 첨자.

단일 타입에 여러 서브스크립트를 정의할 수 있다.

```swift
let nums: [Int] = [1, 2, 3, 4]

nums[0] //subscript
nums[0] //subscript

let dic: [String: Int] = ["one": 1]

dict["one"] //1, subscript
```

```swift
//subscript 키워드로 작성
//하나 이상의 파라미터와 반환 값을 지정한다.(생략 불가)
//get과 set모두 구현 가능(get은 생략 불가)

subscript(index: Int) -> Int{
	get{
	}
	set(newValue)
	}
}
```

---

**subscript 사용**

```swift
struct Stack {
    var stack: [Int] = [0, 1, 2, 3, 4, 5]
 
    subscript(index: Int) -> Int {
        get {
            return stack[index]
        }
        set {
            stack[index] = newValue
        }
    }
}

var stack: Stack = .init()
 
stack[0]            // 서브스크립트 getter 접근
stack[1] = 2        // 서브스크립트 setter 접근
```