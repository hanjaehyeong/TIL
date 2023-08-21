## Animation

offset, opacity등을 변수를 통해서 변화하는 식으로 작동을하게되면 우리눈에는 한번에 변화하는것으로 보인다.

이것을 .animation이라는 키워드를 통해서 서서히 변화를 하도록 해주는것이다.

---

animation은 animation modifier가 붙은 화면만 애니메이션 처리를 해줬다면

withAnimation은 {}안에 들어가는 변화되는 값에 영향을 받는 모든 것에 애니메이션 처리를 하라는것이다.

```swift
struct ContentView: View {
    @State var isAnimation = false
    
    var body: some View {
        VStack {
            Button("Animate") {
                withAnimation(.easeIn(duration: 1)) {
                    isAnimation.toggle()
                }
            }
						//withAnimation안에 직접적으로 없지만 애니메이션이 적용된다.
            Rectangle().foregroundColor(.red)
                .frame(width: 100, height: 100)
                .opacity(isAnimation ? 0 : 1)
        }
    }
}
```



```swift
struct ContentView: View {
    @State var isAnimation = false
    
    var body: some View {
        VStack {
            Button("Color Change") {
                withAnimation(.default) {
                    isAnimation.toggle()
                }
            }
						Spacer()
            RoundedRectangle(cornerRadius: isAnimation ? 50 : 25)
                .fill(isAnimation ? Color.red : Color.green)
                .frame(width: 300, height: 300)
						Spacer()
        }
    }
}
```

애니메이션 효과를 줄 때 삼항연산자를 자주 사용한다.

---

## Transition

뷰가 생기고 사라지게 할 때의 애니메이션

```swift
struct ContentView: View {
    @State var isOn: Bool = false
    
    var body: some View {
        VStack {
            Toggle("토글", isOn: $isOn)
						Spacer()
            if isOn{
							Rectangle()
								.foregroundColor(.blue)
								//애니메이션이랑 같이 사용해야 transition 효과가 보임
								.animation(.easeIn)
								.transition(.slide)
						}
        }
    }
}
```