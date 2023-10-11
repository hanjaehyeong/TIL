# ObservableObject, ObservedObject, Published, StateObject

**MVVM 패턴을 사용할 때**

`ObservableObject` 로 ViewModel을 설정하고,

 View에서는 이런 ViewModel에 `@ObservedObject` 를 붙여줌으로서 ViewModel의 변화를 관찰할 수 있고, 그 변화에 반응할 수 있다.

**ObservableObject**

해당 프로토콜을 클래스에 채택하면 해당 클래스의 인스턴스를 관찰하고 있다가 값이 변경되면 뷰를 업데이트 한다.

**@Published**

ObservableObject를 채택한 클래스 내에서 프로퍼티를 만들 때 사용하는 PropertyWrapper

 @Published로 선언된 속성이 Observable Object에 포함되어 있다면 해당 속성이 업데이트 될 때마다 뷰를 업데이트 한다.

반드시 Class에서 사용해야 한다.

**ObservableObject와 @Published의 관계**

ObservableObject라는 가방에 귀중품을 넣어 뒀다.

나는 귀중품을 지키기 위해 할 수 있는 것은 가방(ObservableObject)을 쳐다보는 것 밖에 할 수 없다.

이 때 @Published가 가방의 내용물에 변화가 생기면 알려주는 역할을 한다.

**@ObservedObject**

ObservableObject 프로토콜을 따르는 클래스를 인스턴스화 할때는 붙여야 한다.

값이 업데이트 될 때 마다 View를 갱신하는 PropertyWrapper

**@StateObject**

ObservableObject 프로토콜을 따르는 클래스를 인스턴스화 할때는 붙여야 한다.

@State와 비슷한 이유로 사용한다.

```swift
class myData: ObservableObject { //myData는 ObservableObject 프로토콜을 채택함
    @Published var num = "1" //ObservableObject을 채택하는 클래스의 프로퍼티를 생성할 때 Published를 사용
}

struct ContentView: View {
    @StateObject private var provider = myData() //@State와 동일한 이유로 사용
    
    var body: some View {
        Text("value: \(provider.num)")
    }
}
```

**@ObservedObject Vs @StateObject**

@StateObject를 사용한 View는 부모뷰 변경에도 변경이 없다

@ObservedObject를 사용한 View는 부모뷰의 변경이 일어나면 초기화 된다.

따라서 뷰가 독립적으로 유지돼야 할때는 @StateObject를 그럴 필요가 없을 때는 @ObservedObject를 쓰는게 좋다