//
//  TextsView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/06/30.
//

import SwiftUI

struct TextsView: View {

    @State private var text: String = ""
    @State private var secureText: String = "1234"
    @State private var editText: String = "TextEditorです"

    var body: some View {
        VStack {
            HeaderView(text: "Text")
            Text("Hello, world!")

            Group {
                HeaderView(text: "TextField")
                SubHeaderView(text: "Default")
                TextField("PlaceHolder", text: $text) { isEditing in
                    // 編集開始と終了時呼ばれる
                    print(isEditing)
                } onCommit: {
                    // returnキー押下時に呼ばれる
                    print("Commit")
                }.textFieldStyle(DefaultTextFieldStyle())
                SubHeaderView(text: "Plain")
                TextField("PlaceHolder", text: $text)
                    .textFieldStyle(PlainTextFieldStyle())
                SubHeaderView(text: "RoundedBorder")
                TextField("PlaceHolder", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                // SquareBorderTextFieldStyle（macOS用）
            }

            HeaderView(text: "SecureField")
            SecureField("PlaceHolder", text: $secureText) {
                // returnキー押下時に呼ばれる
                print("onCommit")
            }

            HeaderView(text: "TextEditor")
            TextEditor(text: $editText)
        }.navigationTitle("Text")
    }
}

struct TextsView_Previews: PreviewProvider {
    static var previews: some View {
        TextsView()
    }
}
