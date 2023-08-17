//
//  SideBar.swift
//  HelloGSMClone
//
//  Created by 한재형 on 2023/08/17.
//

import SwiftUI

struct SideBar: View {
    var body: some View {
        ZStack{
            Color(red: 16/255, green: 1/255, blue: 48/255).ignoresSafeArea()
            VStack(alignment: .trailing, spacing: 70){
                HStack{
                    Button{
                        MainView(menubaropend: false)
                    }label: {
                        Image(systemName: "arrow.left")
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                
                Button {
                    //
                } label: {
                    Text("홈으로")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                }
                Button {
                    //
                } label: {
                    Text("학교소개")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                }
                Button {
                    //
                } label: {
                    Text("팀소개")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                }
                Button {
                    //
                } label: {
                    Text("자주 묻는 질문")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                }

                Spacer()
            }.padding(.horizontal)
        }.frame(width: 230, height: .infinity)
    }
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
    }
}
