//
//  NavigationViewRoot.swift
//  TabViewApp
//
//  Created by Emil Atanasov on 11/21/22.
//

import SwiftUI

struct NavigationViewRoot: View {
    @State var items = [
        Item(udid: UUID(), title: "Note 1"),
        Item(udid: UUID(), title: "Note 2"),
        Item(udid: UUID(), title: "Note 3"),
        Item(udid: UUID(), title: "Note 4"),
        Item(udid: UUID(), title: "Note 5"),
        Item(udid: UUID(), title: "button"),
    ]
    
    var body: some View {
        print("[Home] Body was called.")
        return NavigationView {
            List(items) { item in
//                print("[Item] In List.")
//                if item.title == "button" {
//                    Button {
//                        items.append(Item(udid: UUID(), title: "My Note"))
//                    } label: {
//                        Text("Add New Item")
//                    }
//                } else {
                    NavigationLink(item.title, destination: ItemDetailsView(item: item.title))
//                }
                
            }
            .navigationTitle("Home")
//            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct NavigationViewRoot_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewRoot()
    }
}
