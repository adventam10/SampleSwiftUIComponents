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
            Group {
                HeaderView(text: "Label")
                SubHeaderView(text: "Default")
                Label("Trash", systemImage: "trash")
                    .labelStyle(DefaultLabelStyle())
                SubHeaderView(text: "IconOnly")
                Label("Trash", systemImage: "trash")
                    .labelStyle(IconOnlyLabelStyle())
                SubHeaderView(text: "TitleOnly")
                Label("Trash", systemImage: "trash")
                    .labelStyle(TitleOnlyLabelStyle())
                // TitleAndIconLabelStyle（iOS14.5以上）
            }

            Group {
                HeaderView(text: "ProgressView")
                ProgressView("Default", value: 0.5).progressViewStyle(DefaultProgressViewStyle())
                ProgressView("Linear", value: 0.5).progressViewStyle(LinearProgressViewStyle())
                ProgressView("Circular", value: 0.5).progressViewStyle(CircularProgressViewStyle())
            }
        }.navigationTitle("Value Indicators")
    }
}

struct ValueIndicatorsView_Previews: PreviewProvider {
    static var previews: some View {
        ValueIndicatorsView()
    }
}
