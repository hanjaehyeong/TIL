# property
```swift
var age = 0 //변수
let name = "" //상수

//stored peoperty(저장된 프로퍼티)  
class Myclass {
	var name = "" //property
}

struct Mystruct {
	var name = "" //property
}

let myClass = Myclass() //class는 상수던 변수던 상관없이 아무곳에다 담길 수 있다.
myClass.name = "han"

let myStruct = Mystruct() //let으로 선언되어서 property를 변경할 수 없다.
myStruct.name = "han"

//struct는 value type class는 reference type이기 때문이다.

//lazy stored property
//메모리나 CPU의 부하를 막기 위해 사용
//반드시 var로 선언
class Myclass2 {
	lazy var name = ""
	var age = 20
	lazy var isAdult = age > 19 ? true : false //아직 age는 생성되지 않아서 사용이 불가능하지만 lazy를 붙이면 가능(age가 먼저 만들어지는게 보장되기 때문)
	var sex = "men" 
	//...
}
var myClass2 = Myclass2() //property가 아무리 많아도 무조건 다 생성, lazy 제외
//아직 name는 생성되지 않음
myClass2.name
//age 생성됨
myclass2.age = 10
myClass2.isAdult //true
//age가 변경된게 반영되지 않음(age값이 변경되는게 적용되게 만들고 싶으면 func로 만들어야 함)

//computed property(계산된 프로퍼티)
class Myprofile{
	var age = 20 //stored property
	
	//computed property(read only)
	var isAdult: Bool { //타입추론 불가능 타입을 써줘야 함
		return age > 19 ? true : false 
	}
	
	//computed property
	var tempIsAdult = false //입력받은 값을 저장할 변수 필요
	var isAdult2: Bool{
		set{
			tempIsAdult = newValue
		}
		get{
			return age > 19 ? true : false
		}
	}
}

var profile = Myprofile()
profile.age = 10
profile.isAdult //false
//age값이 바로 적용됨, func와 똑같이 작동

profile.isAdult = true //read only라서 오류 발생

```
----
# property observer & wrapper
### observer
```swift
//property에 값을 새로 설정(set)할 때 감지해서 알려주는 기능

class StepCounter{
	var steps = 0	{
		willset { //값을 새로 설정하기 전
			print("현재값", self.steps)
			print("설정하려는 값", newValue)
		}
		didset { //값을 새로 설정한 후
			print("이전 값", oldValue)
			print("현재값", self.steps)
		}
	}
}

let stepcounter = StepCounter()
stepcounter.steps = 10

//현재값 0 (willset)
//설정하려는 값 10
//이전 값 0 (didset)
//현재값 10

//값을 세팅 할 때 마다 항상 알려줌
//willset didset 둘 중 하나만 써도 됨


class ClassA {
	var a = 0
}

class ClassB{
	var b = ClassA(){
		willset{
			print(newValue)
		}
		didset{
			print(oldValue)
		}
	}
}

ClassA가 class일 때
let classB = ClassB()
classB.b.a = 100 //willset과 didset이 동작하지 않음

ClassA가 struct일 때
let classB = ClassB()
classB.b.a = 100 //willset과 didset이 동작 함

//struct는 Value타입이기 때문이다.
```
### wrapper
```swift
//property에 기능을 넣는다(커스터마이징)
//여러곳에 쓸 수 있음

struct add  {
    private var value = 0
    var wrappedValue: Int {
        get { self.value }
        set { self.value = newValue + 3 }
    }
}

struct Me {
    @add var age: Int
}

struct You {
    @add var age: Int
}

var me = Me()
me.age = 10
print(me.age) //13


var you = You()
you.age = 11
print(you.age) //14

// Property Wrapper가 없을 경우
struct Me {
    var num = 0
    var age: Int {
        get { self.num }
        set { self.num = newValue + 3 }
    }
}

struct You {
    var num = 0
    var age: Int {
        get { self.num }
        set { self.num = newValue + 3 }
    }
}

var me = Me()
me.age = 10
print(me.age) //13

var you = You()
you.age = 11
print(you.age) //14

```