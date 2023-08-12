//
//  QNARound.swift
//  HelloGSMClone
//
//  Created by 한재형 on 2023/08/12.
//

import Foundation
import SwiftUI


@ViewBuilder func QNARounded(text: String) -> some View{
    RoundedRectangle(cornerRadius: 8)
        .foregroundColor(.white)
        .frame(width: 360, height: 60)
        .overlay(Text("Q. ").foregroundColor(.teal).fontWeight(.semibold) + Text("\(text)").font(.system(size: 15)).fontWeight(.semibold).foregroundColor(.black))
}
