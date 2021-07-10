//
//  SemanticShapeStylesView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/07/11.
//

import SwiftUI

struct SemanticShapeStylesView: View {

    var body: some View {
        VStack {
            HeaderView(text: "Text")
            Text("Hello, world!")
        }.navigationTitle("Semantic Shape Styles")
    }
}

struct SemanticShapeStylesView_Previews: PreviewProvider {
    static var previews: some View {
        SemanticShapeStylesView()
    }
}
