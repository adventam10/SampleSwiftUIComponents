//
//  ListsView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/07/01.
//

import SwiftUI

struct ListsView: View {

    var body: some View {
        VStack {
            HeaderView(text: "List")
            List {
                Text("First")
                Text("Second")
                Text("Third")
            }

            HeaderView(text: "Section")
            List {
                Section(header: Text("First"),
                        footer: Text("First")) {
                    Text("Item 1")
                    Text("Item 2")
                }

                Section(header: Text("Second"),
                        footer: Text("Second")) {
                    Text("Item 1")
                    Text("Item 2")
                }
            }

            HeaderView(text: "ForEach")
            ForEach(0...3, id: \.self) {
                Text("Row \($0)")
            }

        }.navigationTitle("Lists")
    }
}

struct ListsView_Previews: PreviewProvider {
    static var previews: some View {
        ListsView()
    }
}

