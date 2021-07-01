//
//  ImagesView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/06/30.
//

import SwiftUI

struct ImagesView: View {

    var body: some View {
        VStack {
            HeaderView(text: "Image")
            Image(systemName: "trash")
        }.navigationTitle("Images")
    }
}

struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView()
    }
}
