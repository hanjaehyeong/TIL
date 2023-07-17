# Protocol
가이드, 규격을 만드는 것

프로퍼티/메서드에 대한 껍데기만 제공, 실제 구현은 채택한 곳에서

프로토콜 내 프로퍼티는 무조건 var
```swift
protocol UserInfo{
	var userName: String {get set}
	var age: Int = 0
	func presentAge() -> String
}

	//UserInfo라는 뼈대를 토대로 작성
class User: UserInfo{
	var userName: String = ""
	var age: Int = 0
	func presentAge() -> String{
		age.description
	}
}

class Member: UserInfo{
	var userName: String = "han"
	var age: Int = 3
	func presentAge() -> String{
		age.description + "살"
	}
}

let member = Member()
let user = User()

let users: [Any] = [member, user]

users.forEach {info in
	print(info.presentAge())
} //member, user의 presentAge 출력
```
```swift
@objc protocol Band {
    var drum: String   { get set }
    var vocal: String  { get set }
    var piano: String  { get set }
    var guitar: String { get set }
    @objc optional var bass: String { get set } 

    func play()
}
```
bass란 프로퍼티 앞에 @objc optional을 붙일 경우(프로토콜에도 당연히 @objc 선언),<br>
이땐 bass라는 프로퍼티에 한해서 **required가 아닌 optional**로 바뀐다<br>
**채택해주는 곳에서 꼭 선언해주지 않아도 에러가 안 남**<br>
**대신 무조건 class에서만 사용해야 함!!**
```swift
//구조체의 경우 메서드 안에서 프로퍼티 값을 변경해야 할 경우 mutating이란 키워드를 사용
protocol Togglable{
	mutating func toggle()
}
//enum에도 사용가능
enum OnOffSwitch: Togglable{
	case on, off

	mutating func toggle(){
		if slef == .on {
			self = .off
		} else{
			self = .on
		}
	}
}

var onoffswitch = OnOffSwitch.off //초기값은 off
onoffswitch.toggle() //on
```

---

## Delegation

A 화면과 B 화면 변수 내용 연결

```swift
enum AdultType{
	case adult
	case notadult
}

protocol UserInfoDelegate{
	func isAdult(adultType: AdultType)
}

class UserA: UserInfoDelegate{
	func isAdult(adultType: AdultType){
		
	}
}

class TypeChekcer{
	var delegate: UserInfoDelegate?

	func checkDone(){
		delegate?.isAdult(adultType: .adult. )
	}
}

let userA = UserA()
let typeChecker = Typechecker()

typeChecker.delegate = userA
typeChecker.checkDone()
```

---

## protocol extension

```swift
protocol RandomNum{
	func randnum() -> Int
}

extension RandomNum{
	func randnum() -> Int{
		int.random(in: 1...10) 
	}
}

//extension으로 미리 구현을 해서 할 필요가 없음
struct UserData: RandomNum{
}

var userData = Userdata()

userData.randomNuber()
```

---

## protocol composition

```swift
protocol Named{
	var name: String {get}
}

protocol Aged{
	var age: Int {get set}
}

struct PersonData: Named, Aged{
	var name: String = "han"
	var age: Int = 16
}

func showPersonData(person: PersonData){
	print(person.name, person.age)
}

showPersonData(person: PersonData())

```