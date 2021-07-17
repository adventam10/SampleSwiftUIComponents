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
            // PrimaryContentStyle（iOS15以上）
            // SecondaryContentStyle（iOS15以上）
            // TertiaryContentStyle（iOS15以上）
            // QuaternaryContentStyle（iOS15以上）

            HeaderView(text: "ForegroundStyle")
            ZStack {
                // どう使うんだ？
                Text("🤷‍♂️")
                Rectangle()
                    .stroke(lineWidth: 1)
                    .fill(ForegroundStyle())
                    .frame(width: 44, height: 44)
            }

            HeaderView(text: "BackgroundStyle")
            ZStack {
                // どう使うんだ？
                Text("🤷‍♂️")
                Rectangle()
                    .stroke(lineWidth: 1)
                    .fill(BackgroundStyle())
                    .frame(width: 44, height: 44)
            }

            // TintShapeStyle（iOS15以上）
            // SeparatorShapeStyle（macOS用）
            // SelectionShapeStyle（iOS15以上）
        }.navigationTitle("Semantic Shape Styles")
    }
}

struct SemanticShapeStylesView_Previews: PreviewProvider {
    static var previews: some View {
        SemanticShapeStylesView()
    }
}
