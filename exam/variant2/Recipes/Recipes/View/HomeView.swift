//
//  HomeView.swift
//  Recipes
//
//  Created by Emil Atanasov on 11/29/22.
//

import SwiftUI

struct HomeView: View {
    @State var isOn: Bool = false
    var body: some View {
        NavigationView {
            List {
                Text("Списък с рецепти")
                Toggle("Продукт", isOn: $isOn)
                    .toggleStyle(CheckboxToggleStyle())
            }
            .navigationTitle("Рецепти")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
