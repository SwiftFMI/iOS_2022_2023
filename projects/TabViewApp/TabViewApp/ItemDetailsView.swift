//
//  ItemDetailsView.swift
//  TabViewApp
//
//  Created by Emil Atanasov on 11/21/22.
//

import SwiftUI

struct ItemDetailsView: View {
    init(item: String) {
        self.item = item
        print("Construct a ItemDetailsView - \(item)!")
    }
    var item: String
    var body: some View {
        let p = 1; print("Body was called.")
        
        return VStack {
            Text("Details: \(item)")
            NavigationLink("More details > \(item)", destination: ItemDetailsView(item: "item 3"))
        }
        .navigationTitle("\(item)")
            .onAppear  {
                print("Execute once visible!")
            }
    }
}

struct ItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailsView(item: "Demo")
    }
}
