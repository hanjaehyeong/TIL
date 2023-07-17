# TabBar 만드는 법
다른 파일에 TabBar에 넣을 화면을 따로 구현하고 `TabView{}`로 묶음
```swift
HStack{
    TabView{
        Home() //Home 화면
            .tabItem{
                VStack{
                    Image(systemName: "house")
                    Text("홈")
                        .font(.system(size: 15))
                }
            }
        Friends() //Friends 화면
            .tabItem{
                VStack{
                    Image(systemName: "person.2")
                    Text("친구")
                        .font(.system(size: 15))
                }
            }
        profile() //profile 화면
            .tabItem{
                VStack{
                    Image(systemName: "person.circle")
                    Text("프로필")
                        .font(.system(size: 15))
                }
            }
        alarm() //alarm 화면
            .tabItem{
                VStack{
                    Image(systemName: "bell")
                    Text("알림")
                        .font(.system(size: 15))
                }
            }
        menu() //menu 화면
            .tabItem{
                VStack{
                    Image(systemName: "square.grid.2x2")
                    Text("메뉴")
                        .font(.system(size: 15))
                }
            }
    }
}
```