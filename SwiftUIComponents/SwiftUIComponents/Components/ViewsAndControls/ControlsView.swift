//
//  ControlsView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/06/30.
//

import SwiftUI

struct ControlsView: View {

    var body: some View {
        VStack {
            HeaderView(text: "Link")
            Link("am10ぶろぐ", destination: URL(string: "https://www.am10.blog/")!)

            Group {
                HeaderView(text: "Menu")
                SubHeaderView(text: "Default")
                Menu("Piyo") {
                    Button("Hoge") {
                        print("hoge")
                    }
                    Menu("Foo") {
                        Button("Fuga") {
                            print("fuga")
                        }
                    }
                }.menuStyle(DefaultMenuStyle())
                SubHeaderView(text: "BorderlessButton")
                Menu("Piyo") {
                    Button("Hoge") {
                        print("hoge")
                    }
                    Menu("Foo") {
                        Button("Fuga") {
                            print("fuga")
                        }
                    }
                }.menuStyle(BorderlessButtonMenuStyle())
                // BorderedButtonMenuStyle（macOS用）
            }
        }.navigationTitle("Controls")
    }
}


struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView()
    }
}
