#  UIRepresentable
SwiftUI 내에서 UIkit 코드를 사용하기 위해 UIRepresentable 프로토콜을 사용한다.
```swift
struct UIRepresentable: View {
    @State private var text = NSMutableAttributedString("UIkit")
    var body: some View {
        VStack {
            Text("SwiftUI")
            TextView(text: $text)
        }
    }
}

struct TextView: UIViewRepresentable {
    @Binding var text: NSMutableAttributedString

    func makeUIView(context: Context) -> UITextView {
        UITextView()
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.attributedText = text
    }
}
```