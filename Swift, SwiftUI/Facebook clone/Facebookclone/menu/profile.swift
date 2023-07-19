//
//  profile.swift
//  Facebookclone
//
//  Created by 한재형 on 2023/07/17.
//

import SwiftUI

struct profile: View {
    var body: some View {
        ScrollView{
            VStack{
                ZStack{
                    HStack{
                        Text("한재형")
                    }
                    HStack{
                        Spacer()
                        Image(systemName: "pencil")
                        Image(systemName: "magnifyingglass")
                    }
                }.padding(.horizontal)
                ZStack(alignment: .bottom){
                    Image("Userprofile")
                        .resizable()
                        .frame(width: .infinity, height: 220)
                    HStack{
                        Image("Userprofile")
                            .resizable()
                            .frame(width: 190, height: 190)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 4))
                            .padding(.bottom, -60)
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(Color(.systemGray4))
                            .overlay(Circle().stroke(Color.white, lineWidth: 3))
                            .overlay(Image(systemName: "camera.fill"))
                        HStack{
                            Spacer()
                            VStack{
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.blue)
                                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                                    .overlay(Image(systemName: "face.dashed.fill").foregroundColor(.white))
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(Color(.systemGray4))
                                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                                    .overlay(Image(systemName: "camera.fill"))
                            }
                        }
                        Spacer()
                    }.padding(.horizontal)
                }.padding(.bottom, 60)
                VStack{
                    HStack{
                        Text("한재형")
                            .font(.system(size: 25))
                        Spacer()
                    }.padding(.horizontal)
                    HStack{
                        Button{
                            //스토리에 추가 눌렀을 떄
                        }label: {
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(.blue)
                                .frame(width: 150, height: 40)
                                .overlay(Text("스토리에 추가").foregroundColor(.white))
                        }
                        Button{
                            //프로필 편집 눌렀을 떄
                        }label: {
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Color(.systemGray4))
                                .frame(width: 150, height: 40)
                                .overlay(Text("프로필 편집").foregroundColor(.black))
                        }
                        Button{
                            //... 눌렀을 떄
                        }label: {
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Color(.systemGray4))
                                .frame(width: 50, height: 40)
                                .overlay(Image(systemName: "ellipsis").foregroundColor(.black))
                        }
                    }
                    VStack{
                        HStack(alignment: .top){
                            Image("Userprofile")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            VStack(alignment: .leading, spacing: 4){
                                Text("일반 사용자에게 페이지가 어떻게 보이는지 확인해보세요")
                                    .font(.system(size: 18))
                                Text("친구가 아닌 사람들에게 회원님의 프로필이 어떻게 표시되는지 확인할 수 있습니다.")
                                    .font(.system(size: 15))
                            }
                        }.padding(.top, 15)
                            .padding(.leading, 5)
                            .padding(.trailing, 5)
                        HStack{
                            Button{
                                
                            }label: {
                                RoundedRectangle(cornerRadius: 8)
                                    .frame(width: 160, height: 40)
                                    .foregroundColor(Color(.systemGray4))
                                    .overlay(Text("나중에 하기").foregroundColor(.black))
                            }
                            Button{
                                
                            }label: {
                                RoundedRectangle(cornerRadius: 8)
                                    .frame(width: 160, height: 40)
                                    .overlay(Text("나중에 하기").foregroundColor(.white))
                            }
                        }.padding(.bottom, 15)
                    }.background(Color(.systemGray6))
                        .cornerRadius(8)
                    Divider()
                        .frame(height: 6)
                        .overlay(Color(.systemGray5))
                    HStack(spacing: 26){
                        Button{
                            
                        }label: {
                            Capsule()
                                .foregroundColor(.blue)
                                .frame(width: 70, height: 40)
                                .overlay(Text("게시물").foregroundColor(.white))
                        }
                        Button{
                            
                        }label: {
                            Text("릴스")
                                .foregroundColor(.black)
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                    .padding(.bottom, -2)
                    Divider()
                        .frame(width: 360)
                    HStack{
                        Text("상세 정보")
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    .padding(.horizontal)
                    .padding(.top, 8)
                }
            }
        }
    }
}

struct profile_Previews: PreviewProvider {
    static var previews: some View {
        profile()
    }
}
