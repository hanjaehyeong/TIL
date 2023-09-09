# static, class method & property

static과 class는 타입 프로퍼티나 타입 메서드 혹은 타입 연산 프로퍼티나 타입 연산 메서드를 생성하기 위해 사용한다.

static과 class없이 프로퍼티나 메서드를 생성하면 **인스턴스 타입**이다.

**타입 프로퍼티나 타입 메서드를 사용하는 이유는 인스턴스화를 하지 않기 위해서이다.**

**인스턴스 메소드는 사용하려면 인스턴스화가 필요하다.**

```swift
인스턴스화란 클래스를 인스턴스(객체)로 만들어주는 과정이다.

-> let appleCar = Car()       // Car 클래스를 객체로 할당. (인스턴스화)
//이 외에 다양한 인스턴스를 만들 수 있다.
```

타입 메소드는 인스턴스화 할 필요가 없으며 **하나만 존재**할 수 있다.

다만 struct, enum에서는 static을 사용한 타입 메서드만 사용이 가능하다.

class와 static의 차이는 class는 overriding이 가능하고 static은 불가능하다.
```swift
Class A{
	let instace = 1 //instace property
	static let type1 = 2 //type property
	class let type2 = 3 //type property

	let func instanceMethod{ //instance method
		print("instance")
	}
	static func typeMethod1{ //type method
		print("type1")
	}
	class func typeMethod2{ //type method
		print("type2")
	}
}

let a = A()

print(a.instance)
a.instaceMethod

print(a.type1) //오류
print(a.type2) //오류
a.typeMethod1 //오류
a.typeMethod2 //오류

print(A.type1) 
print(A.type2)
A.typeMethod1
A.typeMethod2
```