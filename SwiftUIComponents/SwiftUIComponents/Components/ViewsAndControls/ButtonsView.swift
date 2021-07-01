//
//  ButtonsView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/06/30.
//

import SwiftUI

struct ButtonsView: View {

    var body: some View {
        VStack {
            Group {
                HeaderView(text: "Button")
                SubHeaderView(text: "Default")
                Button("Button") {
                    print("Tap")
                }.buttonStyle(DefaultButtonStyle())
                SubHeaderView(text: "Borderless")
                Button("Button") {
                    print("Tap")
                }.buttonStyle(BorderlessButtonStyle())
                SubHeaderView(text: "Plain")
                Button("Button") {
                    print("Tap")
                }.buttonStyle(PlainButtonStyle())
                // CardButtonStyle（tvOS用）
                // LinkButtonStyle（macOS用）
            }
            // たぶんNavigationViewと併用するやつ
            HeaderView(text: "EditButton")
            EditButton()

        }.navigationTitle("Buttons")
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
