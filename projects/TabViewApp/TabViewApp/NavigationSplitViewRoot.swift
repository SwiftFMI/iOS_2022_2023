//
//  NavigationSplitViewRoot.swift
//  TabViewApp
//
//  Created by Emil Atanasov on 11/21/22.
//

import SwiftUI

struct Item: Identifiable {
    var id: UUID {
        return udid
    }
    var udid: UUID = UUID()
    var title: String
}

struct NavigationSplitViewRoot: View {
    @State var items = [
        Item(udid: UUID(), title: "Item 1"),
        Item(udid: UUID(), title: "Item 2"),
        Item(udid: UUID(), title: "Item 3"),
        Item(udid: UUID(), title: "Item 4"),
        Item(udid: UUID(), title: "Item 5"),
    ]
    @State var item: String = "Item 1"
    var body: some View {
        NavigationSplitView {
            VStack {
                ForEach(items, id: \.id) { item in
                    Text(item.title)
                }
            }
        } content: {
            EmptyView()
        } detail: {
            ItemDetailsView(item: item)
        }
    }
}

struct NavigationSplitViewRoot_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSplitViewRoot(items: [
            Item(udid: UUID(), title: "Item 1"),
            Item(udid: UUID(), title: "Item 2"),
            Item(udid: UUID(), title: "Item 3"),
            Item(udid: UUID(), title: "Item 4"),
            Item(udid: UUID(), title: "Item 5"),
        ], item: "")
    }
}
