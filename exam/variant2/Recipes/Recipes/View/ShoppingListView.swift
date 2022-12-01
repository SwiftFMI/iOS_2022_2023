//
//  ShoppingListView.swift
//  Recipes
//
//  Created by Emil Atanasov on 11/29/22.
//

import SwiftUI

struct ShoppingListView: View {

    var body: some View {
        VStack (alignment: .leading) {
            Text("Списък с продуктите за дадена рецепта")
            ForEach(1..<8) { index in
                Text("Продукт \(index)")
                
            }
        }
    }
}

struct ShoppingListView_Previews:
    PreviewProvider {
    @State static var isOn: Bool = false
    static var previews: some View {
        Group {
            ShoppingListView()
            Toggle("Продукт", isOn: $isOn)
                .toggleStyle(CheckboxToggleStyle())
        }
        
    }
}
