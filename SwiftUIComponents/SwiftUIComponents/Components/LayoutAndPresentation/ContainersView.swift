//
//  ContainersView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/07/01.
//

import SwiftUI

struct ContainersView: View {

    @State private var userAgreed = false

    @State private var name: String = ""
    @State private var birthday = Date()

    var body: some View {
        VStack {
            HeaderView(text: "Form")
            Form {
                Section(header: Text("Profile")) {
                    TextField("Name", text: $name)
                    DatePicker(
                        "Birthday",
                        selection: $birthday,
                        displayedComponents: [.date]
                    )
                }
            }

            HeaderView(text: "Group")
            Group {
                Text("First")
                Text("Second")
                Text("Third")
            }
            .font(.headline)

            HeaderView(text: "GroupBox")
            GroupBox(label: Label("Agreement", systemImage: "building.columns")) {
                ScrollView {
                    Text("agreementText\nhogehoge\nfugafuga\npiyopiyo\nfoofoo")
                }
                .frame(height: 100)
                Toggle(isOn: $userAgreed) {
                    Text("I agree")
                }
            }

            // ControlGroup（iOS15以上）
        }.navigationTitle("Containers")
    }
}

struct ContainersView_Previews: PreviewProvider {
    static var previews: some View {
        ContainersView()
    }
}
