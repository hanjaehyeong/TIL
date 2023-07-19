//
//  ContentView.swift
//  Facebookclone
//
//  Created by 한재형 on 2023/07/13.
//

import SwiftUI
import Foundation

struct ColorManager {
    // create static variables for custom colors
    static let TopGray = Color("TopGray")

    //... add the rest of your colors here
}

struct ContentView: View {
    var body: some View {
        
            HStack{
                TabView{
                    Home()
                        .tabItem{
                            VStack{
                                Image(systemName: "house")
                                Text("홈")
                                    .font(.system(size: 15))
                            }
                        }
                    Friends()
                        .tabItem{
                            VStack{
                                Image(systemName: "person.2")
                                Text("친구")
                                    .font(.system(size: 15))
                            }
                        }
                    profile()
                        .tabItem{
                            VStack{
                                Image(systemName: "person.circle")
                                Text("프로필")
                                    .font(.system(size: 15))
                            }
                        }
                    alarm()
                        .tabItem{
                            VStack{
                                Image(systemName: "bell")
                                Text("알림")
                                    .font(.system(size: 15))
                            }
                        }
                    menu()
                        .tabItem{
                            VStack{
                                Image(systemName: "square.grid.2x2")
                                Text("메뉴")
                                    .font(.system(size: 15))
                            }
                        }
                }
            }
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
