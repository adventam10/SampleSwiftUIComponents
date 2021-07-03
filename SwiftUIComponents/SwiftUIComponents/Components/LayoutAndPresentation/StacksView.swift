//
//  StacksView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/07/01.
//

import SwiftUI

struct StacksView: View {

    var body: some View {
        VStack {
            HeaderView(text: "HStack")
            HStack(alignment: .center, spacing: 16) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
            }

            HeaderView(text: "VStack")
            VStack(alignment: .center, spacing: 4) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 40)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 40)
            }

            HeaderView(text: "ZStack")
            ZStack {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                    .offset(x: 10, y: 10)
            }
        }.navigationTitle("Stacks")
    }
}

struct StacksView_Previews: PreviewProvider {
    static var previews: some View {
        StacksView()
    }
}
