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
    @State var health21 = ""
    @State var health22 = ""
    @State var health23 = ""
    @State var art21 = ""
    @State var art22 = ""
    @State var art23 = ""
    @State var music21 = ""
    @State var music22 = ""
    @State var music23 = ""
    @State var Presentitem = 0
    @State var itemname = ""
    @State var absence1 = ""
    @State var absence2 = ""
    @State var absence3 = ""
    @State var late1 = ""
    @State var late2 = ""
    @State var late3 = ""
    @State var leave1 = ""
    @State var leave2 = ""
    @State var leave3 = ""
    @State var volunteer1 = ""
    @State var volunteer2 = ""
    @State var volunteer3 = ""
    @State var miss1 = ""
    @State var miss2 = ""
    @State var miss3 = ""
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
                            //일반 교과
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
                                Group{
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
                                }
                                //추가과목
                                ForEach(0..<Presentitem, id: \.self){_ in
                                    VStack{
                                        HStack{
                                            TextField("추가과목입력", text: $itemname)
                                                .frame(width: 80, height: 40)
                                                .background(.teal)
                                                .font(.system(size: 13))
                                                .cornerRadius(8)
                                                .multilineTextAlignment(.center)
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
                                            Presentitem -= 1
                                        }label: {
                                            Text("삭제")
                                                .foregroundColor(.red)
                                        }
                                    }
                                }
                                //과목추가 버튼
                                Button{
                                    Presentitem += 1
                                }label: {
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 380, height: 40)
                                        .foregroundColor(.blue)
                                        .overlay(Text("+과목추가").foregroundColor(.white))
                                }.padding(.bottom, 70)
                                //예체능 교과
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
                                    Group{
                                        //체육
                                        HStack{
                                            RoundedRectangle(cornerRadius: 8)
                                                .frame(width: 80, height: 40)
                                                .foregroundColor(.teal)
                                                .overlay(Text("체육").foregroundColor(.white).font(.system(size: 15)))
                                            Picker("선택", selection: $health21){
                                                ForEach(Grade, id: \.self) {
                                                    Text($0)
                                                }
                                            }
                                            .frame(width: 90, height: 40)
                                            .background(.gray)
                                            .cornerRadius(8)
                                            Picker("선택", selection: $health22){
                                                ForEach(Grade, id: \.self) {
                                                    Text($0)
                                                }
                                            }
                                            .frame(width: 90, height: 40)
                                            .background(.gray)
                                            .cornerRadius(8)
                                            Picker("선택", selection: $health23){
                                                ForEach(Grade, id: \.self) {
                                                    Text($0)
                                                }
                                            }
                                            .frame(width: 90, height: 40)
                                            .background(.gray)
                                            .cornerRadius(8)
                                        }
                                        //미술
                                        HStack{
                                            RoundedRectangle(cornerRadius: 8)
                                                .frame(width: 80, height: 40)
                                                .foregroundColor(.teal)
                                                .overlay(Text("미술").foregroundColor(.white).font(.system(size: 15)))
                                            Picker("선택", selection: $art21){
                                                ForEach(Grade, id: \.self) {
                                                    Text($0)
                                                }
                                            }
                                            .frame(width: 90, height: 40)
                                            .background(.gray)
                                            .cornerRadius(8)
                                            Picker("선택", selection: $art22){
                                                ForEach(Grade, id: \.self) {
                                                    Text($0)
                                                }
                                            }
                                            .frame(width: 90, height: 40)
                                            .background(.gray)
                                            .cornerRadius(8)
                                            Picker("선택", selection: $art23){
                                                ForEach(Grade, id: \.self) {
                                                    Text($0)
                                                }
                                            }
                                            .frame(width: 90, height: 40)
                                            .background(.gray)
                                            .cornerRadius(8)
                                        }
                                        //음악
                                        HStack{
                                            RoundedRectangle(cornerRadius: 8)
                                                .frame(width: 80, height: 40)
                                                .foregroundColor(.teal)
                                                .overlay(Text("음악").foregroundColor(.white).font(.system(size: 15)))
                                            Picker("선택", selection: $music21){
                                                ForEach(Grade, id: \.self) {
                                                    Text($0)
                                                }
                                            }
                                            .frame(width: 90, height: 40)
                                            .background(.gray)
                                            .cornerRadius(8)
                                            Picker("선택", selection: $music22){
                                                ForEach(Grade, id: \.self) {
                                                    Text($0)
                                                }
                                            }
                                            .frame(width: 90, height: 40)
                                            .background(.gray)
                                            .cornerRadius(8)
                                            Picker("선택", selection: $music23){
                                                ForEach(Grade, id: \.self) {
                                                    Text($0)
                                                }
                                            }
                                            .frame(width: 90, height: 40)
                                            .background(.gray)
                                            .cornerRadius(8)
                                        }
                                    }
                                }
                                //비교과
                                VStack{
                                    Group{
                                        HStack(spacing: 3){
                                            RoundedRectangle(cornerRadius: 8)
                                                .frame(width: 60, height: 66)
                                                .foregroundColor(.teal)
                                                .overlay(Text("학년").foregroundColor(.white))
                                            VStack{
                                                RoundedRectangle(cornerRadius: 8)
                                                    .frame(width: 257, height: 29)
                                                    .foregroundColor(.blue)
                                                    .overlay(Text("출결상황").foregroundColor(.white))
                                                HStack(spacing: 3){
                                                    RoundedRectangle(cornerRadius: 8)
                                                        .frame(width: 62, height: 29)
                                                        .foregroundColor(.blue)
                                                        .overlay(Text("결석").foregroundColor(.white))
                                                    RoundedRectangle(cornerRadius: 8)
                                                        .frame(width: 62, height: 29)
                                                        .foregroundColor(.blue)
                                                        .overlay(Text("지각").foregroundColor(.white))
                                                    RoundedRectangle(cornerRadius: 8)
                                                        .frame(width: 62, height: 29)
                                                        .foregroundColor(.blue)
                                                        .overlay(Text("조퇴").foregroundColor(.white))
                                                    RoundedRectangle(cornerRadius: 8)
                                                        .frame(width: 62, height: 29)
                                                        .foregroundColor(.blue)
                                                        .overlay(Text("결과").foregroundColor(.white))
                                                }
                                            }
                                            RoundedRectangle(cornerRadius: 8)
                                                .frame(width: 60, height: 66)
                                                .foregroundColor(.blue)
                                                .overlay(Text("봉사활동(시간)")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 14))
                                                )
                                        }
                                        //1학년
                                        HStack(spacing: 4){
                                            RoundedRectangle(cornerRadius: 8)
                                                .foregroundColor(.teal)
                                                .frame(width: 60, height: 29)
                                                .overlay(Text("1").foregroundColor(.white))
                                            TextField("입력", text: $absence1)
                                                .frame(width: 60, height: 29)
                                                .background(.teal)
                                                .font(.system(size: 13))
                                                .cornerRadius(8)
                                                .multilineTextAlignment(.center)
                                            TextField("입력", text: $late1)
                                                .frame(width: 60, height: 29)
                                                .background(.teal)
                                                .font(.system(size: 13))
                                                .cornerRadius(8)
                                                .multilineTextAlignment(.center)
                                            TextField("입력", text: $leave1)
                                                .frame(width: 60, height: 29)
                                                .background(.teal)
                                                .font(.system(size: 13))
                                                .cornerRadius(8)
                                                .multilineTextAlignment(.center)
                                            TextField("입력", text: $miss1)
                                                .frame(width: 60, height: 29)
                                                .background(.teal)
                                                .font(.system(size: 13))
                                                .cornerRadius(8)
                                                .multilineTextAlignment(.center)
                                            TextField("입력", text: $volunteer1)
                                                .frame(width: 60, height: 29)
                                                .background(.teal)
                                                .font(.system(size: 13))
                                                .cornerRadius(8)
                                                .multilineTextAlignment(.center)
                                        }
                                        //2학년
                                        HStack(spacing: 4){
                                            RoundedRectangle(cornerRadius: 8)
                                                .foregroundColor(.teal)
                                                .frame(width: 60, height: 29)
                                                .overlay(Text("2").foregroundColor(.white))
                                            TextField("입력", text: $absence2)
                                                .frame(width: 60, height: 29)
                                                .background(.teal)
                                                .font(.system(size: 13))
                                                .cornerRadius(8)
                                                .multilineTextAlignment(.center)
                                            TextField("입력", text: $late2)
                                                .frame(width: 60, height: 29)
                                                .background(.teal)
                                                .font(.system(size: 13))
                                                .cornerRadius(8)
                                                .multilineTextAlignment(.center)
                                            TextField("입력", text: $leave2)
                                                .frame(width: 60, height: 29)
                                                .background(.teal)
                                                .font(.system(size: 13))
                                                .cornerRadius(8)
                                                .multilineTextAlignment(.center)
                                            TextField("입력", text: $miss2)
                                                .frame(width: 60, height: 29)
                                                .background(.teal)
                                                .font(.system(size: 13))
                                                .cornerRadius(8)
                                                .multilineTextAlignment(.center)
                                            TextField("입력", text: $volunteer2)
                                                .frame(width: 60, height: 29)
                                                .background(.teal)
                                                .font(.system(size: 13))
                                                .cornerRadius(8)
                                                .multilineTextAlignment(.center)
                                        }
                                        //3학년
                                        HStack(spacing: 4){
                                            RoundedRectangle(cornerRadius: 8)
                                                .foregroundColor(.teal)
                                                .frame(width: 60, height: 29)
                                                .overlay(Text("3").foregroundColor(.white))
                                            TextField("입력", text: $absence3)
                                                .frame(width: 60, height: 29)
                                                .background(.teal)
                                                .font(.system(size: 13))
                                                .cornerRadius(8)
                                                .multilineTextAlignment(.center)
                                            TextField("입력", text: $late3)
                                                .frame(width: 60, height: 29)
                                                .background(.teal)
                                                .font(.system(size: 13))
                                                .cornerRadius(8)
                                                .multilineTextAlignment(.center)
                                            TextField("입력", text: $leave3)
                                                .frame(width: 60, height: 29)
                                                .background(.teal)
                                                .font(.system(size: 13))
                                                .cornerRadius(8)
                                                .multilineTextAlignment(.center)
                                            TextField("입력", text: $miss3)
                                                .frame(width: 60, height: 29)
                                                .background(.teal)
                                                .font(.system(size: 13))
                                                .cornerRadius(8)
                                                .multilineTextAlignment(.center)
                                            TextField("입력", text: $volunteer3)
                                                .frame(width: 60, height: 29)
                                                .background(.teal)
                                                .font(.system(size: 13))
                                                .cornerRadius(8)
                                                .multilineTextAlignment(.center)
                                        }
                                    }
                                }.padding(.top, 70)
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
                            }
                        }
                        Spacer()
                    }.navigationBarBackButtonHidden(true)
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}
struct Graduate_Previews: PreviewProvider {
    static var previews: some View {
        Graduate()
    }
}
