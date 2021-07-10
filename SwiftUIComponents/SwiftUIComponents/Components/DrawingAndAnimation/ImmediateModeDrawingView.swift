//
//  ImmediateModeDrawingView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/07/11.
//

import SwiftUI

struct ImmediateModeDrawingView: View {

    var body: some View {
        VStack {
            HeaderView(text: "Text")
            Text("Hello, world!")
        }.navigationTitle("Immediate Mode Drawing")
    }
}

struct ImmediateModeDrawingView_Previews: PreviewProvider {
    static var previews: some View {
        ImmediateModeDrawingView()
    }
}
