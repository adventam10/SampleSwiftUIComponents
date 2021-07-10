//
//  GridsView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/07/01.
//

import SwiftUI

struct GridsView: View {

    private let systemImages = [
        "square.and.arrow.up", "square.and.arrow.up.fill",
        "square.and.arrow.down", "square.and.arrow.down.fill",
        "pencil", "pencil.circle",
        "pencil.circle.fill", "pencil.slash",
        "square.and.pencil", "scribble",
        "scribble.variable", "highlighter",
    ]
    var body: some View {
        VStack {
            let rows: [GridItem] =
                    Array(repeating: .init(.fixed(44)), count: 2)
            HeaderView(text: "LazyHGrid")
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, alignment: .top) {
                    ForEach(systemImages, id: \.self) { name in
                        ZStack {
                            Rectangle()
                                .fill(Color.blue)
                            VStack {
                                Text(name)
                                Image(systemName: name)
                            }
                        }
                    }
                }
            }

            let columns: [GridItem] =
                Array(repeating: .init(.flexible()), count: 2)
            HeaderView(text: "LazyVGrid")
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(systemImages, id: \.self) { name in
                        ZStack {
                            Rectangle()
                                .fill(Color.green)
                            VStack {
                                Text(name)
                                Image(systemName: name)
                            }
                        }
                    }
                }
            }
        }.navigationTitle("Grids")
    }
}

struct GridsView_Previews: PreviewProvider {
    static var previews: some View {
        GridsView()
    }
}
