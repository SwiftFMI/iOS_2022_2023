//
//  LabelList.swift
//  SwiftUIDemo
//
//  Created by Emil Atanasov on 10/31/22.
//

import SwiftUI

struct LabelList: View {
    let title: String
    var body: some View {
        VStack {
            Text(title)
            List {
                Text("Item 1")
                Text("Item 2")
                Text("Item 3")
                Text("Item 4")
                Text("Item 5")
            }
            .foregroundColor(Color.green)
            Image("diagram_swiftui_1")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct LabelList_Previews: PreviewProvider {
    static var previews: some View {
        LabelList(title: "Hello")
    }
}
