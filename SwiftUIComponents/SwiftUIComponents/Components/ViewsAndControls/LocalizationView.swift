//
//  LocalizationView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/06/30.
//

import SwiftUI

struct LocalizationView: View {

    var body: some View {
        VStack {
            HeaderView(text: "LocalizedStringKey")
            Text("hoge")
        }.navigationTitle("Localization")
    }
}

struct LocalizationView_Previews: PreviewProvider {
    static var previews: some View {
        LocalizationView()
    }
}
