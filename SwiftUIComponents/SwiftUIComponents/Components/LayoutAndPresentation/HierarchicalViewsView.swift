//
//  HierarchicalViewsView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/07/01.
//

import SwiftUI

struct HierarchicalViewsView: View {

    struct FileItem: Hashable, Identifiable, CustomStringConvertible {
        var id: Self { self }
        var name: String
        var children: [FileItem]? = nil
        var description: String {
            switch children {
            case nil:
                return "📄 \(name)"
            case .some(let children):
                return children.isEmpty ? "📂 \(name)" : "📁 \(name)"
            }
        }
    }

    let data =
      FileItem(name: "users", children:
        [FileItem(name: "user1234", children:
          [FileItem(name: "Photos", children:
            [FileItem(name: "photo001.jpg"),
             FileItem(name: "photo002.jpg")]),
           FileItem(name: "Movies", children:
             [FileItem(name: "movie001.mp4")]),
              FileItem(name: "Documents", children: [])
          ]),
         FileItem(name: "newuser", children:
           [FileItem(name: "Documents", children: [])
           ])
        ])

    @State private var expanded = true

    var body: some View {
        VStack {
            HeaderView(text: "NavigationView")
            NavigationView {
                Text("Select a Note").navigationTitle("Text")
            }

            HeaderView(text: "OutlineGroup")
            OutlineGroup(data, children: \.children) { item in
                Text("\(item.description)")
            }

            HeaderView(text: "DisclosureGroup")
            DisclosureGroup("Items", isExpanded: $expanded) {
                Text("Item 1")
                Text("Item 2")
                DisclosureGroup("Sub-items") {
                    Text("Sub-item 1")
                }
            }

            HeaderView(text: "TabView")
            TabView {
                Text("The First Tab")
                    .tabItem {
                        Image(systemName: "1.square.fill")
                        Text("First")
                    }
                Text("Another Tab")
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("Second")
                    }
                Text("The Last Tab")
                    .tabItem {
                        Image(systemName: "3.square.fill")
                        Text("Third")
                    }
            }
        }.navigationTitle("Hierarchical Views")
    }
}

struct HierarchicalViewsView_Previews: PreviewProvider {
    static var previews: some View {
        HierarchicalViewsView()
    }
}
