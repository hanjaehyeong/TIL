# Navigation
- NavigationStack

    NavigationView → NavigationStack
    
    내부에서 NavigationLink를 사용할 수 있음
    ```swift
    NavigationStack{
            NavigationLink{
                Detailview()
            }label: {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundStyle(.black)
                    .frame(width: 125, height: 125)
                    .overlay(
                        Text("another view")
                            .foregroundStyle(.white)
                    )
            }
        }
    ```

- NavigationLink
    
    NavigationStack 내에서 다른 화면으로 넘어가는데 사용함

- NavigationSplitView
    
    macOS, iPadOS에서 사용이 가능하며 이 외에 OS에선 NavigationStack과 같이 작동한다.

- NavigationBarItem
    
    **더 이상 사용하지 않음**
    
    NavigationBarItem → toolbar
    ```swift
    NavigationStack {
        List {
            Text("수일쌤⚽️❤️")
            Text("명희쌤➗➖")
            Text("성은쌤😇💾")
            Text("주원쌤💻🧑‍💻")
        }
        .navigationBarTitle(Text("1학년 선생님"))
        .navigationBarItems(leading:
        HStack {
            Button("Hours") {
                    
            }
        }, trailing:
        HStack {
            Button("Favorites") {       
        
            }
        }
        )
    ```