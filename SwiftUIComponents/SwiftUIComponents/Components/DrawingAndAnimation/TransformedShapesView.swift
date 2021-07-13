//
//  TransformedShapesView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/07/11.
//

import SwiftUI

struct TransformedShapesView: View {

    struct Triangle: Shape {

        func path(in rect: CGRect) -> Path {
            Path { path in
                path.move(to: .init(x: 0, y: rect.maxY))
                path.addLine(to: .init(x: rect.midX, y: 0))
                path.addLine(to: .init(x: rect.maxX, y: rect.maxY))
                path.addLine(to: .init(x: 0, y: rect.maxY))
            }
        }
    }

    var body: some View {
        VStack {
            HeaderView(text: "ScaledShape (0.5, 0.5)")
            ScaledShape(shape: Triangle(), scale: .init(width: 0.5, height: 0.5))
                .fill(Color.red)
                .frame(width: 44, height: 44)

            HeaderView(text: "RotatedShape (π)")
            RotatedShape(shape: Triangle(), angle: .init(radians: Double.pi))
                .fill(Color.red)
                .frame(width: 44, height: 44)

            HeaderView(text: "OffsetShape (32, 10)")
            OffsetShape(shape: Triangle(), offset: .init(width: 32, height: 10))
                .fill(Color.red)
                .frame(width: 44, height: 44)

            HeaderView(text: "TransformedShape (angle: π/2)")
            TransformedShape(shape: Triangle(), transform: .init(rotationAngle: CGFloat.pi/2))
                .fill(Color.red)
                .frame(width: 44, height: 44)

            // こいつちょっとわからない。。。
            HeaderView(text: "ContainerRelativeShape")
            ContainerRelativeShape()
                .fill(Color.red)
                .frame(width: 44, height: 44)
        }.navigationTitle("Transformed Shapes")
    }
}

struct TransformedShapesView_Previews: PreviewProvider {
    static var previews: some View {
        TransformedShapesView()
    }
}
