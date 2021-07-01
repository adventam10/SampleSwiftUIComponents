//
//  ValueIndicatorsView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/06/30.
//

import SwiftUI

struct ValueIndicatorsView: View {

    var body: some View {
        VStack {
            HeaderView(text: "Label")
            Label("Trash", systemImage: "trash")

            HeaderView(text: "ProgressView")
            ProgressView("Linear", value: 0.5).progressViewStyle(LinearProgressViewStyle())
            ProgressView("Circular", value: 0.5).progressViewStyle(CircularProgressViewStyle())
        }.navigationTitle("Value Indicators")
    }
}

struct ValueIndicatorsView_Previews: PreviewProvider {
    static var previews: some View {
        ValueIndicatorsView()
    }
}
