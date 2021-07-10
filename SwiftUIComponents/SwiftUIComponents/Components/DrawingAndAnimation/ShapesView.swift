//
//  ShapesView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/07/11.
//

import SwiftUI

struct ShapesView: View {

    var body: some View {
        VStack {
            HeaderView(text: "Text")
            Text("Hello, world!")
        }.navigationTitle("Shapes")
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
