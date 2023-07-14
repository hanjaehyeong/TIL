//
//  ContentView.swift
//  Facebookclone
//
//  Created by 한재형 on 2023/07/13.
//

import SwiftUI
import Foundation

struct ColorManager {
    // create static variables for custom colors
    static let TopGray = Color("TopGray")

    //... add the rest of your colors here
}

struct ContentView: View {
    var body: some View {
        TapView
        VStack{
            ScrollView{
                HStack{ //최상단 부
                    Image("FaceBook LoGo")
                        .resizable()
                        .frame(width: 140, height: 27)
                        .padding(15)
                    Spacer()
                    Image(systemName: "plus.circle") //프로필 칸
                        .resizable()
                        .frame(width: 27, height: 27)
                    Image(systemName: "magnifyingglass.circle")
                        .resizable()
                        .frame(width: 27, height: 27)
                        .padding(.leading, 5)
                    Image(systemName: "ellipsis.message")
                        .resizable()
                        .frame(width: 27, height: 27)
                        .padding(.trailing, 15)
                        .padding(.leading, 5)
                }
                
                HStack{
                    Image("Userprofile")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                        .padding(.leading, 15)
                    Text("무슨 생각을 하고 계신가요?")
                        .foregroundColor(.gray)
                    Spacer()
                    Image(systemName: "photo.on.rectangle.angled")
                        .resizable()
                        .foregroundColor(.green)
                        .frame(width: 27, height: 27)
                        .padding(.trailing, 15)
                }.padding(.bottom, 8)
                
                HStack{
                    Color.gray
                }
                .padding(.top, -8)
                .frame(height: 1)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ZStack(alignment: .bottom){ //스토리 만들기
                            VStack{
                                Image("Userprofile")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .padding(.bottom, -8)
                                VStack{
                                    Spacer()
                                    Text("스토리 만들기")
                                        .foregroundColor(.black)
                                        .font(.system(size: 12))
                                }
                                .padding()
                                .background(Color(.white))
                                .frame(width: 100, height: 70)
                                .shadow(radius: 1)
                            }
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(.blue)
                                .position(CGPoint(x: 50, y: 100))
                                
                        }.cornerRadius(17)
                        ForEach(0..<10){_ in
                            ZStack{
                                Image("Userprofile")
                                    .resizable()
                                    .frame(width: 100, height: 170)
                                HStack{
                                    VStack{
                                        Circle()
                                            .stroke(Color.gray,lineWidth: 4)
                                            .background(Circle().foregroundColor(Color.gray))
                                            .frame(width: 23, height: 23)
                                        Spacer()
                                    }
                                    Spacer()
                                }.padding(8)
                            }
                        }.cornerRadius(17)
                    }
                    .padding(.leading, 15)
                    .padding(.bottom, 10)
                    .padding(.top, 3)
                }
                
                HStack{
                    Color.gray
                }
                .padding(.top, -8)
                .frame(height: 1)
                
                VStack{
                    HStack{
                        Text("알 수도 있는 사람")
                            .padding(.leading, 15)
                        Spacer()
                        Image(systemName: "ellipsis")
                            .padding(.trailing, 10)
                        Image(systemName: "xmark")
                            .padding(.trailing, 15)
                    }
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(0..<15){_ in
                                VStack{
                                    Image("Userprofile")
                                        .resizable()
                                        .frame(width: 150, height: 150)
                                        .padding(.bottom, -8)
                                    VStack{
                                        HStack{
                                            Text("야옹")
                                                .font(.system(size: 12))
                                            Spacer()
                                        }
                                        Spacer()
                                        HStack{
                                            Image(systemName: "person.fill.checkmark")
                                            Text("친구 추가")
                                        }
                                        .foregroundColor(.blue)
                                        .background(Color(.blue))
                                        .cornerRadius(5)
                                        .padding(5)
                                    }
                                    .padding()
                                    .background(Color(.white))
                                    .frame(width: 150, height: 150)
                                }
                            }
                            .cornerRadius(8)
                            .shadow(radius: 1)
                        }.padding(.leading, 15)
                    }
                    Text("모두 보기")
                        .foregroundColor(.blue)
                }
                
                HStack{
                    Color.gray
                }
                .padding(.top, -8)
                .frame(height: 1)
                
                ForEach(0..<2){_ in
                    HStack{
                        Circle()
                            .frame(width: 40, height: 40)
                            .padding(.leading, 15)
                        VStack{
                            Text("Hanjaehyeong").frame(maxWidth: .infinity, alignment: .leading)
                            HStack{
                                Text("8h ·")
                                Image(systemName: "globe.americas.fill")
                            }.frame(maxWidth: .infinity, alignment: .leading)
                        }
                        Spacer()
                        Image(systemName: "ellipsis")
                            .padding(.trailing, 10)
                        Image(systemName: "xmark")
                            .padding(.trailing, 15)
                    }
                    RoundedRectangle(cornerRadius: 0)
                        .frame(height: 350)
                    
                    
                    HStack{
                        Image(systemName: "hand.thumbsup.circle")
                            .padding(.leading, 15)
                            .frame(width: 15, height: 15)
                        Text("273개")
                            .font(.system(size: 15))
                            .padding(.leading, 8)
                        Spacer()
                        HStack{
                            Text("댓글")
                                .padding(.trailing, -3)
                                .font(.system(size: 15))
                            Text("18개")
                                .font(.system(size: 15))
                            Text("공유")
                                .padding(.trailing, -3)
                                .font(.system(size: 15))
                            Text("182회")
                                .font(.system(size: 15))
                            Text("조회")
                                .padding(.trailing, -3)
                                .font(.system(size: 15))
                            Text("20.5만회")
                                .font(.system(size: 15))
                        }.padding(.trailing, 15)
                    }.padding(.bottom, 8)
                    
//                    ZStack{
//                        RoundedRectangle(cornerRadius: 0)
//                            .frame(width: 360,height: 1)
//                            .position(CGPoint(x: 195, y: 0))
//                            .foregroundColor(.gray)
                    Divider()
                        .padding(.leading, 30)
                        .padding(.trailing, 30)
                    HStack{
                        
                        Image(systemName: "hand.thumbsup.circle")
                        Text("좋아요")
                        Spacer()
                        Image(systemName: "bubble.left")
                        Text("댓글")
                        Spacer()
                        Image(systemName: "arrowshape.turn.up.right")
                        Text("공유하기")
                    }
                    .padding(.top, 8)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                }
                
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(.gray)
                    .padding(.top, -8)
            }
            
        }.frame(maxWidth: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
