//
//  HeaderView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/06/30.
//

import SwiftUI

struct HeaderView: View {
    let text: String
    var body: some View {
        ZStack {
            Color.gray
            Text(text)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.init(top: 0, leading: 8, bottom: 0, trailing: 0))
        }.frame(maxWidth: .infinity, maxHeight: 24)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(text: "Header")
    }
}
