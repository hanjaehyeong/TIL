//
//  SchoolIntroduce.swift
//  HelloGSMClone
//
//  Created by 한재형 on 2023/07/27.
//

import SwiftUI
import YouTubePlayerKit

struct SchoolIntroduce: View {
    @Environment(\.openURL) var openURL
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
                        Spacer(minLength: 60)
                        VStack(spacing: 30){
                            Text("광주소프트웨어마이스터고등학교")
                                .font(.system(size: 27))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            YouTubePlayerView("https://www.youtube.com/watch?v=FBEBPnWafTk")
                                .frame(width: 360, height: 260)
                            Button{
                                openURL(URL(string: "http://gsm.gen.hs.kr/main/main.php")!)
                            }label: {
                                RoundedRectangle(cornerRadius: 8)
                                    .foregroundColor(.white)
                                    .frame(width: 180, height: 50)
                                    .overlay(Text("홈페이지").foregroundColor(.black).fontWeight(.semibold))
                            }.padding(.top, 20)
                        }
                        Spacer(minLength: 65)
                        VStack{
                            Text("MOU 기업")
                                .foregroundColor(.white)
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                            Image("MOU")
                                .resizable()
                                .frame(width: 370, height: 100)
                        }.padding(.bottom, 65)
                        VStack{
                            Text("취업률")
                                .foregroundColor(.white)
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                            
                        }
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct SchoolIntroduce_Previews: PreviewProvider {
    static var previews: some View {
        SchoolIntroduce()
    }
}
