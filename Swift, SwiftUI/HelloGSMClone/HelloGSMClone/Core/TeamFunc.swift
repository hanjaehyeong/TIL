//
//  TeamFunc.swift
//  HelloGSMClone
//
//  Created by 한재형 on 2023/08/05.
//

import Foundation
import SwiftUI


func team(title: String, color: Color, subtitle: String, imgname: String) -> (){
//    var title = title
//    var subtitle = subtitle
//    var imaname = imgname
//    var color: Color = color

    Text(title.description)
        .foregroundColor(color)
        .font(.system(size: 22))
        .fontWeight(.semibold) +
    Text("Chapter")
    Divider()
        .background(.white)
        .frame(width: 180)
    Text(subtitle.description)
        .multilineTextAlignment(.center)
        .foregroundColor(.white)
    Divider()
        .background(.white)
        .frame(width: 100)
    Image(imgname.description)
}
