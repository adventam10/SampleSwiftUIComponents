//
//  AnimationView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/07/11.
//

import SwiftUI

struct AnimationView: View {

    var body: some View {
        VStack {
            HeaderView(text: "Text")
            Text("Hello, world!")
        }.navigationTitle("Animation")
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
