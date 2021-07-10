//
//  ShapeStylesView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/07/11.
//

import SwiftUI

struct ShapeStylesView: View {

    var body: some View {
        VStack {
            HeaderView(text: "Text")
            Text("Hello, world!")
        }.navigationTitle("Shape Styles")
    }
}

struct ShapeStylesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeStylesView()
    }
}
