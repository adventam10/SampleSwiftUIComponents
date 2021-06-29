//
//  InfrequentlyUsedViewsView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/06/30.
//

import SwiftUI

struct InfrequentlyUsedViewsView: View {

    var body: some View {
        VStack {
            HeaderView(text: "EmptyView")
            EmptyView()

            HeaderView(text: "EquatableView")
            EquatableView(content: HogeView())

            HeaderView(text: "AnyView")
            makeView(isHoge: false)

//            HeaderView(text: "TupleView")
//            TupleView()
        }.navigationTitle("Infrequently Used Views")
    }

    private func makeView(isHoge: Bool) -> AnyView {
        if isHoge {
            return AnyView(HogeView())
        }
        return AnyView(FugaView())
    }
}

struct HogeView: View, Equatable {

    var body: some View {
        Text("hoge")
    }
}

struct FugaView: View, Equatable {

    var body: some View {
        Button("fuga") {
            print("fuga")
        }
    }
}

struct InfrequentlyUsedViewsView_Previews: PreviewProvider {
    static var previews: some View {
        InfrequentlyUsedViewsView()
    }
}
