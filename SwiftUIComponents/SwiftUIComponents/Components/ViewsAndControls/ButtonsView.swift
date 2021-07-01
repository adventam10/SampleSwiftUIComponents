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
            HeaderView(text: "Button")
            Button("Button") {
                print("Tap")
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
