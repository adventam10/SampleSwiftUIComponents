//
//  ContentView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/06/29.
//

import SwiftUI

enum ViewsAndControlsMenu: Int, CaseIterable, Identifiable {

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

enum LayoutAndPresentationMenu: Int, CaseIterable, Identifiable {

    case stacks
    case lazyStacks
    case grids
    case containers
    case scrollViews
    case lists
    case tables
    case hierarchicalViews
    case scheduledViewUpdates
    case spacersAndDividers

    var title: String {
        switch self {
        case .stacks:
            return "Stacks"
        case .lazyStacks:
            return "Lazy Stacks"
        case .grids:
            return "Grids"
        case .containers:
            return "Containers"
        case .scrollViews:
            return "Scroll Views"
        case .lists:
            return "Lists"
        case .tables:
            return "Tables"
        case .hierarchicalViews:
            return "Hierarchical Views"
        case .scheduledViewUpdates:
            return "Scheduled View Updates"
        case .spacersAndDividers:
            return "Spacers and Dividers"
        }
    }

    var id: Int {
        return rawValue
    }
}

enum DrawingAndAnimationMenu: Int, CaseIterable, Identifiable {

    case immediateModeDrawing
    case shapes
    case transformedShapes
    case shapeStyles
    case semanticShapeStyles
    case animation
    case geometry

    var title: String {
        switch self {
        case .immediateModeDrawing:
            return "Immediate Mode Drawing"
        case .shapes:
            return "Shapes"
        case .transformedShapes:
            return "Transformed Shapes"
        case .shapeStyles:
            return "Shape Styles"
        case .semanticShapeStyles:
            return "Semantic Shape Styles"
        case .animation:
            return "Animation"
        case .geometry:
            return "Geometry"
        }
    }

    var id: Int {
        return rawValue
    }
}

struct ContentView: View {

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Views and Controls")) {
                    ForEach(ViewsAndControlsMenu.allCases) { menu in
                        self.containedView(menu: menu)
                    }
                }
                Section(header: Text("View Layout and Presentation")) {
                    ForEach(LayoutAndPresentationMenu.allCases) { menu in
                        self.containedView(menu: menu)
                    }
                }
                Section(header: Text("Drawing and Animation")) {
                    ForEach(DrawingAndAnimationMenu.allCases) { menu in
                        self.containedView(menu: menu)
                    }
                }
            }
        }
    }

    private func containedView(menu: ViewsAndControlsMenu) -> AnyView {
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

    private func containedView(menu: LayoutAndPresentationMenu) -> AnyView {
        switch menu {
        case .stacks:
            return AnyView(NavigationLink(destination: StacksView()) { Text(menu.title) })
        case .lazyStacks:
            return AnyView(NavigationLink(destination: LazyStacksView()) { Text(menu.title) })
        case .grids:
            return AnyView(NavigationLink(destination: GridsView()) { Text(menu.title) })
        case .containers:
            return AnyView(NavigationLink(destination: ContainersView()) { Text(menu.title) })
        case .scrollViews:
            return AnyView(NavigationLink(destination: ScrollViewsView()) { Text(menu.title) })
        case .lists:
            return AnyView(NavigationLink(destination: ListsView()) { Text(menu.title) })
        case .tables:
            return AnyView(NavigationLink(destination: TablesView()) { Text(menu.title) })
        case .hierarchicalViews:
            return AnyView(NavigationLink(destination: HierarchicalViewsView()) { Text(menu.title) })
        case .scheduledViewUpdates:
            return AnyView(NavigationLink(destination: ScheduledViewUpdatesView()) { Text(menu.title) })
        case .spacersAndDividers:
            return AnyView(NavigationLink(destination: SpacersAndDividersView()) { Text(menu.title) })
        }
    }

    private func containedView(menu: DrawingAndAnimationMenu) -> AnyView {
        switch menu {
        case .immediateModeDrawing:
            return AnyView(NavigationLink(destination: ImmediateModeDrawingView()) { Text(menu.title) })
        case .shapes:
            return AnyView(NavigationLink(destination: ShapesView()) { Text(menu.title) })
        case .transformedShapes:
            return AnyView(NavigationLink(destination: TransformedShapesView()) { Text(menu.title) })
        case .shapeStyles:
            return AnyView(NavigationLink(destination: ShapeStylesView()) { Text(menu.title) })
        case .semanticShapeStyles:
            return AnyView(NavigationLink(destination: SemanticShapeStylesView()) { Text(menu.title) })
        case .animation:
            return AnyView(NavigationLink(destination: AnimationView()) { Text(menu.title) })
        case .geometry:
            return AnyView(NavigationLink(destination: GeometryView()) { Text(menu.title) })
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
