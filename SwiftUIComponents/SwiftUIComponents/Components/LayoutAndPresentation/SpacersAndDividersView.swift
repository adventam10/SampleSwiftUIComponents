//
//  SpacersAndDividersView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/07/01.
//

import SwiftUI

struct SpacersAndDividersView: View {
    var body: some View {
        VStack {
            HeaderView(text: "Spacer")
            HStack {
                Spacer()
                Image(systemName: "checkmark")
                Text("name")
            }
            .border(Color.blue)

            HeaderView(text: "Divider")
            HStack {
                Image(systemName: "checkmark")
                Divider()
                Text("name")
                Divider()
                VStack {
                    Divider()
                    Image(systemName: "checkmark")
                    Divider()
                    Text("name")
                    Divider()
                }
            }
        }.navigationTitle("Spacers and Dividers")
    }
}

struct SpacersAndDividersView_Previews: PreviewProvider {
    static var previews: some View {
        SpacersAndDividersView()
    }
}
