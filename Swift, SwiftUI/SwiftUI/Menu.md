# Menu 띄우는 법
`Menu{}`로 묶고 Button에 Menu에 띄울 글자, 아이콘 넣기

`label: {}`로 대표할 아이콘, 글자 설정
```swift
Menu{
	Button(action: {}, label: {
		Text("게시")
  })
  Button(action: {}, label: {
	  Text("스토리")
  })
  Button(action: {}, label: {
    Text("릴스")
  })
  Button(action: {}, label: {
    Text("라이브 방송")
  })
}label: {
	Label(title: {}, icon: {Image(systemName: "plus.circle")})
		.foregroundColor(.black)
}
```