//
//  TransformedShapesView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/07/11.
//

import SwiftUI

struct TransformedShapesView: View {

    var body: some View {
        VStack {
            HeaderView(text: "Text")
            Text("Hello, world!")
        }.navigationTitle("Transformed Shapes")
    }
}

struct TransformedShapesView_Previews: PreviewProvider {
    static var previews: some View {
        TransformedShapesView()
    }
}
