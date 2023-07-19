//
//  LoginWayView.swift
//  HelloGSMClone
//
//  Created by 한재형 on 2023/07/19.
//

import SwiftUI

struct LoginWayView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 16/255, green: 1/255, blue: 48/255).ignoresSafeArea()
                VStack{
                    HStack{
                        NavigationLink{
                            MainView()
                        }label: {
                            Text("Hello, GSM")
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                        }
                        
                        Spacer()
                        Image(systemName: "line.3.horizontal")
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                    }.padding(.horizontal)
                    Spacer()
                    VStack{
                        Text("다른 계정으로 로그인 하는법")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 25))
                        
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 13)
                            .foregroundColor(.white)
                            .frame(width: 360, height: 180)
                        VStack(spacing: 5){
                            Text("다른 계정으로 로그인이 필요하신 지원자 분들은 아래의")
                            Text("카카오계정 홈페이지")
                                .font(.system(size: 18))
                                .fontWeight(.semibold)
                            + Text("에서 ") +
                            Text("로그아웃 후")
                                .font(.system(size: 18))
                                .fontWeight(.semibold)
                            Text("Hello, GSM")
                                .font(.system(size: 18))
                                .fontWeight(.semibold)
                            + Text("에서 다른 계정으로 ") +
                            Text("로그인 ")
                                .font(.system(size: 18))
                                .fontWeight(.semibold)
                            + Text("부탁드립니다.")
                        }
                        .foregroundColor(.black)
                        .font(.system(size: 15))
                    }
                    Button{
                        
                    }label: {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 250, height: 40)
                            .foregroundColor(.yellow)
                            .overlay(
                                HStack{
                                    Image(systemName: "bubble.left.fill")
                                        .foregroundColor(.black)
                                    Spacer()
                                    Text("카카오계정 홈페이지")
                                        .foregroundColor(.black)
                                        .fontWeight(.semibold)
                                    Spacer()
                                }.padding(.horizontal)
                            )
                    }.padding(.top, 30)
                    Spacer()
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct LoginWayView_Previews: PreviewProvider {
    static var previews: some View {
        LoginWayView()
    }
}
