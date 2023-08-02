//
//  TeamIntroduce.swift
//  HelloGSMClone
//
//  Created by 한재형 on 2023/08/02.
//

import SwiftUI

struct TeamIntroduce: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 16/255, green: 1/255, blue: 48/255).ignoresSafeArea()
                ScrollView{
                    VStack{
                        HStack{
                            NavigationLink{
                                MainView()
                            }label: {
                                Text("Hello, GSM")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .fontWeight(.heavy)
                            }
                            Spacer()
                            Image(systemName: "line.3.horizontal")
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                        }.padding(.horizontal)
                            .padding(.bottom, 170)
                        VStack(spacing: 5){
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.white)
                                .shadow(color: .white, radius: 3)
                                .frame(width: 130, height: 130)
                                .overlay(Text("M")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 40))
                                    .fontWeight(.bold)
                                ).padding(.bottom, 25)
                            Text("더모먼트")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.system(size: 43))
                            Text("광주소프트웨어마이스터고등학교 입학 지원 시스템")
                                .foregroundColor(Color(.systemGray2))
                                .fontWeight(.semibold)
                                .font(.system(size: 15))
                        }
                        Spacer(minLength: 250)
                        VStack(spacing: 5){
                            Text("비전")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                            Text("더모먼트팀은 아래의 비전을 갖고 활동해요!")
                                .foregroundColor(Color(.systemGray2))
                                .fontWeight(.semibold)
                                .font(.system(size: 15))
                            Spacer(minLength: 20)
                            
                            LinearGradient(colors: [.black, .white], startPoint: .top, endPoint: .bottom)
                                .frame(width: 350, height: 230)
                                .mask {
                                    Text("사용자의 순간을 한층 더 혁신하는 데 최적의 장소.")
                                        .font(.largeTitle)
                                        .bold()
                                }.padding(.bottom, -50)
                            Text("사용자의 니즈를 고민하고 모든 일에 높은 비즈니스 임팩트를 창출해요.")
                                .font(.largeTitle)
                                .bold()
                                .foregroundColor(.white)
                            LinearGradient(colors: [.black, .white], startPoint: .bottom, endPoint: .top)
                                .frame(width: 350, height: 230)
                                .mask {
                                    Text("저희는 사용자의 순간을 깊이 통찰하고, 순간의 가치를 비춰내요!")
                                        .font(.largeTitle)
                                        .bold()
                                }.padding(.top, -30)
                            
                        }
                        Spacer(minLength: 160)
                        VStack{
                            Text("팀원 소개")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                        }
                        Spacer()
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct TeamIntroduce_Previews: PreviewProvider {
    static var previews: some View {
        TeamIntroduce()
    }
}
