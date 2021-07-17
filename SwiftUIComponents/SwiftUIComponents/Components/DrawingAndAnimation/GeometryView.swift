//
//  GeometryView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/07/11.
//

import SwiftUI

struct GeometryView: View {

    var body: some View {
        VStack {
            HeaderView(text: "GeometryReader")
            GeometryReader { proxy in
                HStack(spacing: 0) {
                    Text("Left")
                        .frame(width: proxy.size.width / 2, height: proxy.size.height)
                        .background(Color.green)
                    Text("Right")
                        .frame(width: proxy.size.width / 2, height: proxy.size.height)
                        .background(Color.blue)
                }
            }.frame(height: 44)

            // わからん
            HeaderView(text: "Anchor")
            Text("🤷‍♂️")

            // わからん
            HeaderView(text: "UnitPoint")
            Text("🤷‍♂️")

            HeaderView(text: "Angle")
            // = Angle(radians: Double.pi/4)
            Text("Hello").rotationEffect(Angle(degrees: 45))

            // わからん
            HeaderView(text: "ProjectionTransform")
            Text("🤷‍♂️")
        }.navigationTitle("Geometry")
    }
}

struct GeometryView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryView()
    }
}
