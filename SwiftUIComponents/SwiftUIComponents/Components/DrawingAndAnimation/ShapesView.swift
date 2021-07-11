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
            Group {
                HeaderView(text: "Rectangle")
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 44, height: 44)

                HeaderView(text: "RoundedRectangle")
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(width: 44, height: 44)

                HeaderView(text: "Circle")
                Circle()
                    .fill(Color.blue)
                    .frame(width: 44, height: 44)
            }

            Group {
                HeaderView(text: "Ellipse")
                Ellipse()
                    .fill(Color.blue)
                    .frame(width: 88, height: 44)

                HeaderView(text: "Capsule")
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 88, height: 44)

                HeaderView(text: "Path")
                Path { path in
                    path.move(to: .init(x: 0, y: 44))
                    path.addLine(to: .init(x: 22, y: 0))
                    path.addLine(to: .init(x: 44, y: 44))
                    path.addLine(to: .init(x: 0, y: 44))
                }
                    .fill(Color.blue)
                    .frame(width: 44, height: 44)
            }
        }.navigationTitle("Shapes")
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
