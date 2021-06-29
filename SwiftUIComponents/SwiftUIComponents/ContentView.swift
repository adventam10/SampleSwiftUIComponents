//
//  ContentView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/06/29.
//

import SwiftUI

enum ComponentsMenu: Int, CaseIterable, Identifiable {

    case text
    case images
    case buttons
    case controls
    case valueSelectors
    case valueIndicators
    case localization
    case infrequentlyUsedViews

    var title: String {
        switch self {
        case .text:
            return "Text"
        case .images:
            return "Images"
        case .buttons:
            return "Buttons"
        case .controls:
            return "Controls"
        case .valueSelectors:
            return "Value Selectors"
        case .valueIndicators:
            return "Value Indicators"
        case .localization:
            return "Localization"
        case .infrequentlyUsedViews:
            return "Infrequently Used Views"
        }
    }

    var id: Int {
        return rawValue
    }
}

struct ContentView: View {

    var body: some View {
        NavigationView {
            List(ComponentsMenu.allCases) { menu in
                self.containedView(menu: menu)
            }
        }
    }

    private func containedView(menu: ComponentsMenu) -> AnyView {
        switch menu {
        case .text:
            return AnyView(NavigationLink(destination: TextsView()) { Text(menu.title) })
        case .images:
            return AnyView(NavigationLink(destination: ImagesView()) { Text(menu.title) })
        case .buttons:
            return AnyView(NavigationLink(destination: ButtonsView()) { Text(menu.title) })
        case .controls:
            return AnyView(NavigationLink(destination: ControlsView()) { Text(menu.title) })
        case .valueSelectors:
            return AnyView(NavigationLink(destination: ValueSelectorsView()) { Text(menu.title) })
        case .valueIndicators:
            return AnyView(NavigationLink(destination: ValueIndicatorsView()) { Text(menu.title) })
        case .localization:
            return AnyView(NavigationLink(destination: LocalizationView()) { Text(menu.title) })
        case .infrequentlyUsedViews:
            return AnyView(NavigationLink(destination: InfrequentlyUsedViewsView()) { Text(menu.title) })
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
