# Static
swift에서 static은 type property 또는 type function을 의미한다.<br>
static과 class property/function의 차이점은 **class에서는 override가 가능하지만 static은 override가 불가능하다.**
```swift
//type property(static + property)
class Bank{
	var coin: Int = 0
}

var bank1 = Bank()
var bank2 = Bank()

bank1.coin += 500  //500
bank2.coin += 1000 //1000
//bank1과 bank2의 coin은 아무 상관이 없음

class Bank{
	static var coin: Int = 0
}

var bank1 = Bank()
var bank2 = Bank()

bank1.coin += 500  //500
bank2.coin += 1000 //1500
```