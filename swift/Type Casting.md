# Type Casting/Conversion
타입을 바꾼다.

```swift
//conversion
//데이터가 누락 및 추가될 수 있음
var doubleNum: Double = 5.5
Int(doubleNum) //0.5는 없어짐
```

```swift
//casting
class MainClass{
	
}

class Sub1Class: MainClass{
	var imSub = ""
}

var sub1 = Sub1Class()
sub1.imSub = "Im sub"

// Sub1Class -> MainClass (UP Casting)
var newMain = sub1 as MainClass

// MainClass -> Sub1Class (DOWN Casting)
var newSub = newMain as! Sub1Class //확실하지 않으면 사용 X
var newSub = newMain as? Sub1Class //안되면 nil 반환
```