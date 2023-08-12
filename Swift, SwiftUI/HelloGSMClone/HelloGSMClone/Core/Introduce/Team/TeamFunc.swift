//
//  TeamFunc.swift
//  HelloGSMClone
//
//  Created by 한재형 on 2023/08/05.
//

import Foundation
import SwiftUI


@ViewBuilder func team(title: String, color: Color, subtitle: String, imgname: String) -> some View{
    Text("\(title)")
        .foregroundColor(color)
        .font(.system(size: 22))
        .fontWeight(.semibold) +
    Text("Chapter")
        .foregroundColor(.white)
        .font(.system(size: 22))
        .fontWeight(.semibold)
    Divider()
        .background(.white)
        .frame(width: 180)
    Text("\(subtitle)")
        .multilineTextAlignment(.center)
        .foregroundColor(.white)
    Divider()
        .background(.white)
        .frame(width: 100)
    Image("\(imgname)")
        .resizable()
        .frame(width: 180, height: 120)
}
