//
//  License.swift
//  HelloGSMClone
//
//  Created by 한재형 on 2023/07/26.
//

import SwiftUI

struct License: View {
    @State var total1 = ""
    @State var total2 = ""
    var body: some View {
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
                Text("성적입력(검정고시)")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                HStack{
                    VStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 140, height: 40)
                            .foregroundColor(.blue)
                            .overlay(Text("전과목 득점 합계")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .fontWeight(.semibold)
                            )
                        TextField("", text: $total1)
                            .frame(width: 140, height: 30)
                            .background(.gray)
                            .cornerRadius(8)
                    }
                    VStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 140, height: 40)
                            .foregroundColor(.teal)
                            .overlay(Text("전과목 만점 합계")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .fontWeight(.semibold)
                            )
                        TextField("", text: $total2)
                            .frame(width: 140, height: 30)
                            .background(.gray)
                            .cornerRadius(8)
                    }
                }.padding(.top, 50)
                Spacer()
                Button{
                    
                }label: {
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundColor(.white)
                        .frame(width: 160, height: 40)
                        .overlay(Text("저장")
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                        )
                }.padding(.top, 70)
                Spacer()
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct License_Previews: PreviewProvider {
    static var previews: some View {
        License()
    }
}
