//
//  LazyStacksView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/07/01.
//

import SwiftUI

struct LazyStacksView: View {

    var body: some View {
        VStack {
            HeaderView(text: "LazyHStack")
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(1...100, id: \.self) {
                        Text("Column \($0)")
                    }
                }
            }.frame(height: 100)

            HeaderView(text: "LazyVStack")
            ScrollView {
                LazyVStack {
                    ForEach(1...100, id: \.self) {
                        Text("Row \($0)")
                    }
                }
            }.frame(height: 100)
        }.navigationTitle("Lazy Stacks")
    }
}

struct LazyStacksView_Previews: PreviewProvider {
    static var previews: some View {
        LazyStacksView()
    }
}
