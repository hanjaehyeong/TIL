//
//  Home.swift
//  Facebookclone
//
//  Created by 한재형 on 2023/07/17.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            ScrollView{
                HStack{ //최상단 부
                    Image("FaceBook LoGo")
                        .resizable()
                        .frame(width: 140, height: 27)
                        .padding(15)
                    Spacer()
                    Menu{
                        Button(action: {}, label: {
                            Text("게시")
                        })
                        Button(action: {}, label: {
                            Text("스토리")
                        })
                        Button(action: {}, label: {
                            Text("릴스")
                        })
                        Button(action: {}, label: {
                            Text("라이브 방송")
                        })
                    }label: {
                        Label(title: {}, icon: {Image(systemName: "plus.circle")})
                            .foregroundColor(.black)
                    }
                    Button{
                        //검색 버튼 눌렀을 때 실행
                    }label: {
                        Image(systemName: "magnifyingglass.circle")
                            .resizable()
                            .frame(width: 27, height: 27)
                            .padding(.leading, 5)
                            .foregroundColor(.black)
                    }
                    Button{
                        //말풍선 버튼 눌렀을 때 실행
                    }label: {
                        Image(systemName: "ellipsis.message")
                            .resizable()
                            .frame(width: 27, height: 27)
                            .padding(.trailing, 15)
                            .padding(.leading, 5)
                            .foregroundColor(.black)
                    }
                    
                    
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
                    Button{
                        //사진 버튼 눌렀을 떄 실행
                    }label: {
                        Image(systemName: "photo.on.rectangle.angled")
                            .resizable()
                            .foregroundColor(.green)
                            .frame(width: 27, height: 27)
                            .padding(.trailing, 15)
                    }
                    
                }.padding(.bottom, 8)
                
                HStack{
                    Color.gray
                }
                .padding(.top, -8)
                .frame(height: 1)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        Button{
                            //스토리 만들기 눌렀을 떄 실행
                        }label: {
                            ZStack(alignment: .bottom){
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
                        }
                        
                        ForEach(0..<10){_ in
                            Button{
                                //스토리들 눌렀을 때 실행
                            }label: {
                                ZStack{
                                    Image("Userprofile")
                                        .resizable()
                                        .frame(width: 100, height: 170)
                                    HStack{
                                        VStack{
                                            Circle()
                                                .stroke(Color.gray,lineWidth: 4)
                                                .background(Circle().foregroundColor(Color(.systemGray4)))
                                                .frame(width: 23, height: 23)
                                            Spacer()
                                        }
                                        Spacer()
                                    }.padding(8)
                                }
                            }.cornerRadius(17)
                            
                        }
                    }
                    .padding(.leading, 15)
                    .padding(.bottom, 10)
                    .padding(.top, 3)
                }
                
                HStack{
                    Color(.systemGray4)
                }
                .padding(.top, -8)
                .frame(height: 1)
                
                VStack{
                    HStack{
                        Text("알 수도 있는 사람")
                            .padding(.leading, 15)
                        Spacer()
                        Button{
                            //...눌렀을 때 실행
                        }label: {
                            Image(systemName: "ellipsis")
                                .padding(.trailing, 10)
                                .foregroundColor(.black)
                        }
                        Button{
                            //x 눌렀을 때 실행
                        }label: {
                            Image(systemName: "xmark")
                                .padding(.trailing, 15)
                                .foregroundColor(.black)
                        }
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
                                        Button{
                                            //친구축가 눌렀을 때 실행
                                        }label: {
                                            RoundedRectangle(cornerRadius: 5)
                                                .foregroundColor(.blue)
                                                .frame(width: 120, height: 30)
                                                .overlay(
                                                    HStack{
                                                        Image(systemName:"person.fill.checkmark")
                                                        Text("친구 추가")
                                                        
                                                    }.foregroundColor(.black)
                                                )
                                        }
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
                    Button{
                        //모두 보기 눌렀을 때 실행
                    }label: { Text("모두 보기") }
                    
                }
                
                HStack{
                    Color(.systemGray4)
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
                        Button{
                            //...눌렀을 때 실행
                        }label: {
                            Image(systemName: "ellipsis")
                                .padding(.trailing, 10)
                                .foregroundColor(.black)
                        }
                        Button{
                            
                        }label: {
                            Image(systemName: "xmark")
                                .padding(.trailing, 15)
                                .foregroundColor(.black)
                        }
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
                    
                    
                    Divider()
                        .padding(.leading, 30)
                        .padding(.trailing, 30)
                    HStack{
                        Button{
                            //좋아요 눌렀을 때 실행
                        }label: {
                            Image(systemName: "hand.thumbsup.circle")
                            Text("좋아요")
                        }.foregroundColor(.black)
                        Spacer()
                        Button{
                            //댓글 눌렀을 때 실행
                        }label: {
                            Image(systemName: "bubble.left")
                            Text("댓글")
                        }.foregroundColor(.black)
                        Spacer()
                        Button{
                            //공유하기 눌렀을 때 실행
                        }label: {
                            Image(systemName: "arrowshape.turn.up.right")
                            Text("공유하기")
                        }.foregroundColor(.black)
                    }
                    .padding(.top, 8)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                }
                
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color(.systemGray4))
                    .padding(.top, -8)
            }
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
