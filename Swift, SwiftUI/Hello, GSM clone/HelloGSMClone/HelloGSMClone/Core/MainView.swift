//
//  MainView.swift
//  HelloGSMClone
//
//  Created by 한재형 on 2023/07/19.
//

import SwiftUI

struct MainView: View {
    
    @State var menubaropend = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 16/255, green: 1/255, blue: 48/255).ignoresSafeArea()
                ScrollView{
                    ZStack{
                        LinearGradient(colors: [.black, .yellow], startPoint: .bottomLeading, endPoint: .topTrailing)
                            .frame(width: 66, height: 66)
                            .clipShape(Circle())
                        VStack{
                            HStack{
                                Text("Hello, GSM")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .font(.largeTitle)
                                    .fontWeight(.heavy)
                                Spacer()
                                Button{
                                    self.menubaropend.toggle()
                                }label: {
                                    Image(systemName: "line.3.horizontal")
                                        .frame(width: 25, height: 25)
                                        .foregroundColor(.white)
                                }
                            }
                            .padding(.horizontal)
                            .padding(.bottom, 50)
                            VStack(alignment: .center, spacing: 4){
                                VStack(spacing: -3){
                                    Text("광주소프트웨어")
                                        .foregroundColor(.white)
                                        .font(.system(size: 45))
                                        .font(.largeTitle)
                                        .fontWeight(.black)
                                    Text("마이스터고등학교")
                                        .foregroundColor(.white)
                                        .font(.system(size: 45))
                                        .font(.largeTitle)
                                        .fontWeight(.black)
                                }
                                VStack(spacing: 3){
                                    Text("광주소프트웨어마이스터고등학교")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 15))
                                        .fontWeight(.semibold)
                                    Text("입학 지원 시스템")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 15))
                                        .fontWeight(.semibold)
                                }
                            }.padding(.bottom, 50)
                            VStack(spacing: 10){
                                Button{
                                    
                                }label: {
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width:250, height: 40)
                                        .foregroundColor(Color(.systemGray))
                                        .overlay(Text("접수 기간이 아닙니다.")
                                            .foregroundColor(.black)
                                            .fontWeight(.heavy))
                                }.padding(.bottom, 10)
                                Text("접수 기간: 10. 17.~ 10.20.")
                                    .foregroundColor(.white)
                                    .fontWeight(.heavy)
                                Divider()
                                    .frame(width: 45, height: 3)
                                    .overlay(Color(.white))
                            }.padding(.bottom, 45)
                            HStack{
                                Spacer()
                                VStack(alignment: .trailing, spacing: 30){
                                    NavigationLink{
                                        LoginWayView()
                                    }label:{
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(.white)
                                            .frame(width: 250, height: 45)
                                            .overlay(Text("여러 계정으로 로그인 하는 법").fontWeight(.heavy).foregroundColor(.black))
                                            
                                    }
                                    Button{
                                        
                                    }label: {
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(.white)
                                            .frame(width: 200, height: 45)
                                            .overlay(Text("모의 성적 계산 해보기").fontWeight(.heavy).foregroundColor(.black))
                                            
                                    }
                                }
                            }
                            .padding(.horizontal)
                            .padding(.bottom, 60)
                            VStack{
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 370, height: 400)
                                    .background(.regularMaterial)
                                    .cornerRadius(15)
                            }
                        }
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
