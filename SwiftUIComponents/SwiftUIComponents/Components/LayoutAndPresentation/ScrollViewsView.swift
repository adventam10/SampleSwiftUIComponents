//
//  ScrollViewsView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/07/01.
//

import SwiftUI


struct ScrollViewsView: View {

    @Namespace var topID
    @Namespace var bottomID

    var body: some View {
        VStack {
            HeaderView(text: "ScrollView")
            ScrollView {
                VStack {
                    ForEach(0..<100) {
                        Text("Row \($0)")
                    }
                }
            }

            HeaderView(text: "ScrollViewReader")
            ScrollViewReader { proxy in
                ScrollView {
                    Button("Scroll to Bottom") {
                        withAnimation {
                            proxy.scrollTo(bottomID)
                        }
                    }
                    .id(topID)

                    VStack {
                        ForEach(0..<100) {
                            Text("Row \($0)")
                        }
                    }

                    Button("Top") {
                        withAnimation {
                            proxy.scrollTo(topID)
                        }
                    }
                    .id(bottomID)
                }
            }
        }.navigationTitle("Scroll Views")
    }
}


struct ScrollViewsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewsView()
    }
}
