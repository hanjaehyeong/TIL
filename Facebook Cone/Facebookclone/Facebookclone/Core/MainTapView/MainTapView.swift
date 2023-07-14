//
//  MainTapView.swift
//  Facebookclone
//
//  Created by 한재형 on 2023/07/14.
//

import SwiftUI

struct MainTapView: View {
    var body: some View {
        TapView {
            Text("홈")
            Text("친구")
            Text("동영상")
        }
    }
}

struct MainTapView_Previews: PreviewProvider {
    static var previews: some View {
        MainTapView()
    }
}
