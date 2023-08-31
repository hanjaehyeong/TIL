# extension
클래스, 구조체, 열거형, 프로토콜 타입 등에 **새로운 기능을 추가**하여 확장할 수 있는 기능<br>
외부에서 가져온 프레임워크나 라이브러리에 **내가 원하는 기능**을 추가하고자 할 때 유용

```swift
//사용 형태
extension 확장할 타입 이름 {
     //기능 구현
}
```

```swift
//사용 형태
extension Int {
     var isEven: Bool {
       return self % 2 == 0
    }
    var isOdd: Bool {
       return self % 2 == 1
    }
}

print(3.isEven) // false
print(4.isEven) // true
print(3.isOdd) // true
print(4.isOdd) // false
```