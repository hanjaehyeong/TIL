# Sheet, FullScreenCover

Sheet

화면에 시트를 띄운다 → 화면의 대부분을 채움

Sheet를 아래로 스와이프하면 닫힘 
```swift
Button{
    showSheet1.toggle()
}label: {
    Image("Cat")
        .resizable()
        .frame(width: 300, height: 380)
}
.sheet(isPresented: $showSheet1, content: {
    Study()
        .presentationDetents([.height(100)])
})

struct Study: View {
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            Text("어머니의 따님이 만드신 유서가 깊은 작품")
                .foregroundStyle(.white)
        }
    }
}
```
FullScreenCover

Sheet와 다르게 화면을 꽉 채운다.

되돌아가기 위해서 바인딩이나 Dismiss를 사용해줘야 한다.
```swift
Button{
    showSheet.toggle()
}label: {
    Text("show FullScreenCover")
}
.fullScreenCover(isPresented: $showSheet, content: {
    HaPpY(showSheet: $showSheet)
})

struct HaPpY: View {
    @Binding var showSheet: Bool
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            Button{
                showSheet.toggle()
            }label: {
                Text("close")
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 60)
            }
            .background(.black)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

```