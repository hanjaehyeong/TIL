1. ViewModifier 프로토콜을 채택하는 struct를 만든다.
content는 적용시킬 대상
```swift
struct CustomViewModifer: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .padding(30)
            .foregroundColor(.white)
    }
}
```
2. extension View
```swift
extension View {
    func customtitle() -> some View{
        modifier(CustomViewModifer())
    }
}
```
3. 사용
```swift
struct ContentView: View {
    var body: some View {
        Text("스유")
            .customtitle()
    }
}
```