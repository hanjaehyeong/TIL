//
//  Graduate.swift
//  HelloGSMClone
//
//  Created by 한재형 on 2023/07/26.
//

import SwiftUI

struct Graduate: View {
    @State var FreeTerm = true
    @State var FreeYear = false
    var Grade = ["없음", "A", "B", "C", "D", "E"]
    @State var Korean21 = ""
    @State var Korean22 = ""
    @State var Korean23 = ""
    @State var Morality21 = ""
    @State var Morality22 = ""
    @State var Morality23 = ""
    @State var Society21 = ""
    @State var Society22 = ""
    @State var Society23 = ""
    @State var History21 = ""
    @State var History22 = ""
    @State var History23 = ""
    @State var Math21 = ""
    @State var Math22 = ""
    @State var Math23 = ""
    @State var Science21 = ""
    @State var Science22 = ""
    @State var Science23 = ""
    @State var Home21 = ""
    @State var Home22 = ""
    @State var Home23 = ""
    @State var English21 = ""
    @State var English22 = ""
    @State var English23 = ""
    @State var Repeat = 0
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 16/255, green: 1/255, blue: 48/255).ignoresSafeArea()
                ScrollView{
                    VStack(spacing: 35){
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
                        VStack(spacing: 40){
                            Text("성적입력")
                                .foregroundColor(.white)
                                .font(.system(size: 23))
                                .fontWeight(.semibold)
                            HStack(spacing: 20){
                                Button{
                                    FreeYear.toggle()
                                    FreeTerm = false
                                }label: {
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 100, height: 50)
                                        .foregroundColor(FreeYear ? .blue : Color(.systemGray2))
                                        .overlay(Text("자유학년제").foregroundColor(FreeYear ? .white : Color(.systemGray6)))
                                }
                                Button{
                                    FreeTerm.toggle()
                                    FreeYear = false
                                }label: {
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 100, height: 50)
                                        .foregroundColor(FreeTerm ? .blue : Color(.systemGray2))
                                        .overlay(Text("자유학기제").foregroundColor(FreeTerm ? .white : Color(.systemGray6)))
                                }
                            }
                        }
                        if(FreeYear){
                            VStack{
                                HStack{
                                    LinearGradient(colors: [.teal, .blue], startPoint: .bottomLeading, endPoint: .topTrailing)
                                        .frame(width: 80, height: 40)
                                        .clipShape(RoundedRectangle(cornerRadius: 8))
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 90, height: 40)
                                        .foregroundColor(.blue)
                                        .overlay(Text("2학년 1학기").foregroundColor(.white).font(.system(size: 15)))
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 90, height: 40)
                                        .foregroundColor(.blue)
                                        .overlay(Text("2학년 2학기").foregroundColor(.white).font(.system(size: 15)))
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 90, height: 40)
                                        .foregroundColor(.blue)
                                        .overlay(Text("3학년 1학기").foregroundColor(.white).font(.system(size: 15)))
                                }
                                //국어
                                HStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 80, height: 40)
                                        .foregroundColor(.teal)
                                        .overlay(Text("국어").foregroundColor(.white).font(.system(size: 15)))
                                    Picker("선택", selection: $Korean21){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                    Picker("선택", selection: $Korean22){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                    Picker("선택", selection: $Korean23){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                }
                                //도덕
                                HStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 80, height: 40)
                                        .foregroundColor(.teal)
                                        .overlay(Text("도덕").foregroundColor(.white).font(.system(size: 15)))
                                    Picker("선택", selection: $Morality21){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                    Picker("선택", selection: $Morality22){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                    Picker("선택", selection: $Morality23){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                }
                                //사회
                                HStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 80, height: 40)
                                        .foregroundColor(.teal)
                                        .overlay(Text("사회").foregroundColor(.white).font(.system(size: 15)))
                                    Picker("선택", selection: $Society21){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                    Picker("선택", selection: $Society22){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                    Picker("선택", selection: $Society23){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                }
                                //역사
                                HStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 80, height: 40)
                                        .foregroundColor(.teal)
                                        .overlay(Text("역사").foregroundColor(.white).font(.system(size: 15)))
                                    Picker("선택", selection: $History21){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                    Picker("선택", selection: $History22){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                    Picker("선택", selection: $History23){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                }
                                //수학
                                HStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 80, height: 40)
                                        .foregroundColor(.teal)
                                        .overlay(Text("수학").foregroundColor(.white).font(.system(size: 15)))
                                    Picker("선택", selection: $Math21){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                    Picker("선택", selection: $Math22){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                    Picker("선택", selection: $Math23){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                }
                                //과학
                                HStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 80, height: 40)
                                        .foregroundColor(.teal)
                                        .overlay(Text("과학").foregroundColor(.white).font(.system(size: 15)))
                                    Picker("선택", selection: $Science21){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                    Picker("선택", selection: $Science22){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                    Picker("선택", selection: $Science23){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                }
                                //기술가정
                                HStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 80, height: 40)
                                        .foregroundColor(.teal)
                                        .overlay(Text("기술가정").foregroundColor(.white).font(.system(size: 15)))
                                    Picker("선택", selection: $Home21){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                    Picker("선택", selection: $Home22){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                    Picker("선택", selection: $Home23){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                }
                                //영어
                                HStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 80, height: 40)
                                        .foregroundColor(.teal)
                                        .overlay(Text("영어").foregroundColor(.white).font(.system(size: 15)))
                                    Picker("선택", selection: $English21){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                    Picker("선택", selection: $English22){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                    Picker("선택", selection: $English23){
                                        ForEach(Grade, id: \.self) {
                                            Text($0)
                                        }
                                    }
                                    .frame(width: 90, height: 40)
                                    .background(.gray)
                                    .cornerRadius(8)
                                }
                                Button{
                                    Repeat += 1
                                }label: {
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 380, height: 40)
                                        .foregroundColor(.blue)
                                        .overlay(Text("+과목추가").foregroundColor(.white))
                                }
                            }
                        }
                        Spacer()
                    }.navigationBarBackButtonHidden(true)
                }
            }
        }
    }
}
struct Graduate_Previews: PreviewProvider {
    static var previews: some View {
        Graduate()
    }
}
