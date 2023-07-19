//
//  alarm.swift
//  Facebookclone
//
//  Created by 한재형 on 2023/07/17.
//

import SwiftUI

struct alarm: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                HStack{
                    Text("새로운 알림")
                        .fontWeight(.semibold)
                    Spacer()
                }.padding(.horizontal)
                VStack{
                    HStack{
                        Image("Userprofile")
                            .resizable()
                            .frame(width: 72, height: 72)
                            .clipShape(Circle())
                            .padding(.top, 12)
                            .padding(.bottom, 12)
                        VStack(alignment: .leading, spacing: 5){
                            HStack{
                                Text("회원님이 교류한 페이지를 기반으로 ") +
                                Text("고맘미 ").fontWeight(.semibold) +
                                Text("그룹이 추천되었습니다.")
                            }.font(.system(size: 16))
                            HStack{
                                Text("16주")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 13))
                                Spacer()
                            }
                        }
                        Image(systemName: "ellipsis")
                            .resizable()
                            .frame(width: 20, height: 5)
                            .padding(.leading, 12)
                    }.padding(.horizontal)
                }
                .background(Color(.systemGray6))
            }.navigationTitle("알림")
                .navigationBarTitleDisplayMode(.automatic)
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing){
                        Button{
                            
                        }label: {
                            Circle()
                                .frame(width: 35, height: 35)
                                .foregroundColor(Color(.systemGray5))
                                .overlay(Image(systemName: "gearshape.fill").foregroundColor(.black))
                        }
                        Button{
                            
                        }label: {
                            Circle()
                                .frame(width: 35, height: 35)
                                .foregroundColor(Color(.systemGray5))
                                .overlay(Image(systemName: "magnifyingglass").foregroundColor(.black))
                        }.padding(.leading, -10)
                    }
                }
        }
        
    }
}

struct alarm_Previews: PreviewProvider {
    static var previews: some View {
        alarm()
    }
}
