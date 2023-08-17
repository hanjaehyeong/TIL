//
//  MenuBar.swift
//  HelloGSMClone
//
//  Created by 한재형 on 2023/08/17.
//

import SwiftUI

struct MenuBar: View {
    @State private var closed = true
    var body: some View {
        ZStack{
            Color(red: 16/255, green: 1/255, blue: 48/255).ignoresSafeArea()
            VStack(alignment: .trailing, spacing: 70){
                
                Divider()
                    .padding(.bottom, 30)
                
                NavigationLink {
                    MainView()
                } label: {
                    Text("홈으로")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                }
                NavigationLink {
                    SchoolIntroduce()
                } label: {
                    Text("학교소개")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                }
                NavigationLink {
                    TeamIntroduce()
                } label: {
                    Text("팀소개")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                }
                NavigationLink {
                    QNA()
                } label: {
                    Text("자주 묻는 질문")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                }
                
                Spacer()
            }
            .padding(.horizontal)
        }
        .frame(width: 200, height: .infinity)
        .offset(x: 100)
    }
}

struct MenuBar_Previews: PreviewProvider {
    static var previews: some View {
        MenuBar()
    }
}
