//
//  Friends.swift
//  Facebookclone
//
//  Created by 한재형 on 2023/07/17.
//

import SwiftUI

struct Friends: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{ //상단
                    //                HStack{
                    //                    Text("친구")
                    //                        .font(.system(size: 30))
                    //                    Spacer()
                    //                    Image(systemName: "magnifyingglass.circle")
                    //                        .resizable()
                    //                        .frame(width: 30, height: 30)
                    //                }.padding(.horizontal)
                    HStack{
                        Button{
                            
                        }label: {
                            Capsule()
                                .foregroundColor(.gray)
                                .frame(width: 53, height: 30)
                                .overlay(Text("추천").foregroundColor(.black))
                        }
                        Button{
                            
                        }label: {
                            Capsule()
                                .foregroundColor(.gray)
                                .frame(width: 73, height: 30)
                                .overlay(Text("내 친구").foregroundColor(.black))
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.bottom, 5)
                    Divider()
                        .frame(width: 360)
                }
                VStack{
                    
                    HStack{
                        Text("친구 요청")
                            .font(.system(size: 18))
                        Spacer()
                        Text("모두 보기")
                            .foregroundColor(.blue)
                    }.padding(.horizontal)
                    
                    VStack{
                        HStack{
                            Image("Userprofile")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                            VStack(alignment: .leading, spacing: 5){
                                HStack{
                                    Text("야옹이")
                                    Spacer()
                                    Text("n주")
                                }
                                Text("함께 아는 친구 n명")
                                HStack{
                                    Button{
                                        //확인 눌렀을 때
                                    }label: {
                                        RoundedRectangle(cornerRadius: 8)
                                            .frame(width: 130, height: 37)
                                            .overlay(Text("확인").foregroundColor(.white))
                                    }
                                    Button{
                                        //확인 눌렀을 때
                                    }label: {
                                        RoundedRectangle(cornerRadius: 8)
                                            .foregroundColor(.gray)
                                            .frame(width: 130, height: 37)
                                            .overlay(Text("삭제").foregroundColor(.black))
                                    }
                                }
                            }
                        }
                    }.padding(.horizontal)
                }
            }
            .navigationTitle("친구")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button{
                        
                    }label: {
                        Image(systemName: "magnifyingglass.circle")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct Friends_Previews: PreviewProvider {
    static var previews: some View {
        Friends()
    }
}
