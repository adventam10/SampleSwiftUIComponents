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
            Group {
                HeaderView(text: "Color")
                Color(.systemRed)
                    .frame(width: 44, height: 44)

                // Material（iOS15以上）

                HeaderView(text: "ImagePaint")
                Rectangle()
                    .fill(ImagePaint(image: Image("image"), scale: 0.1))
                    .frame(width: 44, height: 44)
            }

            Group {
                HeaderView(text: "AngularGradient")
                AngularGradient(gradient: Gradient(colors: [.red, .black]),
                                center: .center, angle: .degrees(45))
                    .frame(width: 44, height: 44)

                // EllipticalGradient（iOS15以上）

                HeaderView(text: "LinearGradient")
                LinearGradient(gradient: Gradient(colors: [.green, .black]),
                               startPoint: .leading,
                               endPoint: .trailing)
                    .frame(width: 44, height: 44)

                HeaderView(text: "RadialGradient")
                RadialGradient(gradient: Gradient(colors: [.blue, .black]),
                               center: .center,
                               startRadius: 0,
                               endRadius: 22)
                    .frame(width: 44, height: 44)

            }
        }.navigationTitle("Shape Styles")
    }
}

struct ShapeStylesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeStylesView()
    }
}
