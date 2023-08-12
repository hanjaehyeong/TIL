//
//  QNA.swift
//  HelloGSMClone
//
//  Created by 한재형 on 2023/08/12.
//

import SwiftUI
struct QNA: View {
    
    @State var question: String = ""
    @State private var showingPopover = false
    
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
                                    .font(.largeTitle)
                                    .fontWeight(.heavy)
                            }
                            
                            Spacer()
                            Image(systemName: "line.3.horizontal")
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                        }.padding(.horizontal)
                            .padding(.bottom, 80)
                        VStack{
                            Text("자주 묻는 질문")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.system(size: 22))
                                .padding(.bottom, 50)
                            TextField("검색하실 질문을 입력해주세요.", text: $question, prompt: Text("검색하실 질문을 입력해주세요.").foregroundColor(Color(.systemGray4)))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                            Divider()
                                .frame(minHeight: 1)
                                .frame(width: 250)
                                .background(.white)
                        }.padding(.bottom, 30)
                        VStack(spacing: 10){
//                            Button(){
//                                showingPopover = true
//                            }label: {
//                                QNARounded(text: "광주소프트웨어마이스터고는 어떤 학교인가요?")
//                            }.popover(isPresented: $showingPopover) {
//                                RoundedRectangle(cornerRadius: 8)
//                                    .frame(width: 300, height: 100)
//                                    .foregroundColor(.white)
//                                    .shadow(color: .black, radius: 6, y: 3)
//                                    .overlay(Text("광주소프트웨어마이스터고는 어떤 학교인가요?"))
//                                    .font(.system(size: 20))
//                                    .fontWeight(.semibold)
//                                    .padding(.bottom, 15)
//                                    .ignoresSafeArea(.all)
//                                RoundedRectangle(cornerRadius: 8)
//                                    .frame(width: 350, height: 250)
//                                    .foregroundColor(Color(.systemGray5))
//                                    .overlay(Text("광주소프트웨어마이스터고는 소프트웨어영마이스터 양성을 목표로 하는 산업\n수요 맞춤형 고등학교입니다.광주소프트웨어마이스터고는 인성과 지성을 바탕\n으로 직업기초능력과 글로벌역량을 쌓아 전공능력을 갖춘 인재를 양성하고자\n합니다.이를 위해 SW 기반 지식 습득, 실무과제 전공필수지식 습득, SW산업체\n현장체 및 취업강화, 기업탐구형 팀 프로젝트 학급운영을 하고 있습니다."))
//                                    .font(.system(size: 15))
//                            }
                            Button{
                                showingPopover.toggle()
                            }label: {
                                QNARounded(text: "광주소프트웨어마이스터고는 어떤 학교인가요?")
                            }
                            .sheet(isPresented: $showingPopover, content: {NewScreen()})
                            QNARounded(text: "원서접수에 필요로 하는 자격증이 있나요?")
                            QNARounded(text: "원서접수 마감 시간은 언제인가요?")
                            QNARounded(text: "현재 다른 학교 고등학교 재학중인데 지원할 수 있나요?")
                            QNARounded(text: "다른 마이스터고등학교에 이중지원 할 수 있나요?")
                            QNARounded(text: "교과내신성적 산출방법은?")
                            QNARounded(text: "입학하기 전에 선행학습을 해야 하나요?")
                            QNARounded(text: "중학교 내신성적에 가중치가 있나요?")
                            QNARounded(text: "졸업 후 대학 진학은 가능한가요?")
                        }
                        Spacer()
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct NewScreen: View{
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        ZStack(alignment: .topTrailing){
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            Button(action:{
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.black)
                    .padding(.top, 20)
            })
            VStack(alignment: .center){
                Spacer()
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 300, height: 100)
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 6, y: 3)
                    .overlay(Text("광주소프트웨어마이스터고는 어떤 학교인가요?"))
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .padding(.bottom, 15)
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 350, height: 250)
                    .foregroundColor(Color(.systemGray5))
                    .overlay(Text("광주소프트웨어마이스터고는 소프트웨어영마이스터 양성을 목표로 하는 산업\n수요 맞춤형 고등학교입니다.광주소프트웨어마이스터고는 인성과 지성을 바탕\n으로 직업기초능력과 글로벌역량을 쌓아 전공능력을 갖춘 인재를 양성하고자\n합니다.이를 위해 SW 기반 지식 습득, 실무과제 전공필수지식 습득, SW산업체\n현장체 및 취업강화, 기업탐구형 팀 프로젝트 학급운영을 하고 있습니다."))
                    .font(.system(size: 15))
                Spacer()
            }
        }.padding(.horizontal)
    }
}

struct QNA_Previews: PreviewProvider {
    static var previews: some View {
        QNA()
    }
}
