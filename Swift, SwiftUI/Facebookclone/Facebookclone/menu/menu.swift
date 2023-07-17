//
//  menu.swift
//  Facebookclone
//
//  Created by 한재형 on 2023/07/17.
//

import SwiftUI

struct menu: View {
    
    private let MenuView: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Text("메뉴")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    Button{
                        
                    }label: {
                        Circle()
                            .frame(width: 35, height: 35)
                            .foregroundColor(Color(.systemGray5))
                            .overlay(Image(systemName: "gearshape.fill").foregroundColor(.black))
                    }
                    Button{
                        
                    }label: {
                        Circle()
                            .frame(width: 35, height: 35)
                            .foregroundColor(Color(.systemGray5))
                            .overlay(Image(systemName: "magnifyingglass").foregroundColor(.black))
                    }
                }
                .padding(.horizontal)
                .padding(.top, 6)
                HStack{
                    Image("Userprofile")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    VStack(alignment: .leading){
                        Text("양옹잉")
                            .font(.system(size: 20))
                        Text("내 프로필 보기")
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }.padding(.horizontal)
                LazyVGrid(columns: MenuView){
                    ForEach(1..<9){ _ in
                        Button{
                            
                        }label: {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 170, height: 80)
                                .foregroundColor(.white)
                                .shadow(radius: 2)
                        }
                    }
                }.padding(.horizontal)
                Button{
                    
                }label: {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 350, height: 40)
                        .foregroundColor(Color(.systemGray4))
                        .overlay(Text("더 보기").foregroundColor(.black))
                }.padding(.top, 13)
            }
            List{
                Text("도움말 및 지원")
                Text("설정 및 개인지원")
                Text("Meta의 다른 제품")
            }.listStyle(.sidebar)
        }.background(Color(.systemGray6))
    }
}

struct menu_Previews: PreviewProvider {
    static var previews: some View {
        menu()
    }
}
