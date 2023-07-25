//
//  GradeCalCulator.swift
//  HelloGSMClone
//
//  Created by 한재형 on 2023/07/25.
//

import SwiftUI

struct GradeCalCulator: View {
    @State var graduate = true
    @State var student = false
    @State var license = false
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
                    VStack(spacing: 35){
                        Text("성적을 계산하기 전에 현재 상태를 골라주세요.")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                        HStack(spacing: 15){
                            Button{
                                graduate.toggle()
                                student = false
                                license = false
                            }label: {
                                RoundedRectangle(cornerRadius: 8)
                                    .frame(width: 100, height: 50)
                                    .foregroundColor(graduate ? .blue : Color(.systemGray2))
                                    .overlay(Text("졸업자").foregroundColor(graduate ? .white : Color(.systemGray6)))
                            }
                            Button{
                                student.toggle()
                                graduate = false
                                license = false
                            }label: {
                                RoundedRectangle(cornerRadius: 8)
                                    .frame(width: 100, height: 50)
                                    .foregroundColor(student ? .blue : Color(.systemGray2))
                                    .overlay(Text("졸업예정").foregroundColor(student ? .white : Color(.systemGray6)))
                            }
                            Button{
                                license.toggle()
                                graduate = false
                                student = false
                            }label: {
                                RoundedRectangle(cornerRadius: 8)
                                    .frame(width: 100, height: 50)
                                    .foregroundColor(license ? .blue : Color(.systemGray2))
                                    .overlay(Text("검정고시").foregroundColor(license ? .white : Color(.systemGray6)))
                            }
                        }
                        Button{
                            
                        }label: {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 170, height: 50)
                                .foregroundColor(.white)
                                .overlay(Text("다음").foregroundColor(.black))
                        }.padding(.top, 120)
                    }
                    Spacer()
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct GradeCalCulator_Previews: PreviewProvider {
    static var previews: some View {
        GradeCalCulator()
    }
}
