//
//  TeamIntroduce.swift
//  HelloGSMClone
//
//  Created by 한재형 on 2023/08/12.
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
                        
                        team(title: "DevOps", color: .orange, subtitle: "클라우드 아키텍쳐를 구성하고 운영하는데\n사용되는 기술들을 연구합니다.", imgname: "DevOps")
                        Spacer(minLength: 60)
                        team(title: "Operating", color: .blue, subtitle: "팀을 관리하고 개개인의 역량을\n끌어낼 수 있는 최선의 방법을 연구합니다.", imgname: "Operating")
                        Spacer(minLength: 60)
                        team(title: "Design", color: .cyan, subtitle: "사용자의 관점에서\n디자인하는 팀입니다.", imgname: "Design")
                        Spacer(minLength: 60)
                        team(title: "FrontEnd", color: .red, subtitle: "화면을 구상하고, 제작하며 사용자에게\n더 나은 UI/UX를 제공하기 위해\n끊임없이 연구합니다.", imgname: "FrontEnd")
                        Spacer(minLength: 60)
                        team(title: "BackEnd", color: .green, subtitle: "더모먼트팀의 다양한 백엔드 애플리케이션을 개발하고\nCS 적인 사고를 통해 데이터를 안정적이고\n유연하게 서빙 하는 것을 목표로 합니다.", imgname: "FrontEnd")
                            Spacer()
                        }
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
