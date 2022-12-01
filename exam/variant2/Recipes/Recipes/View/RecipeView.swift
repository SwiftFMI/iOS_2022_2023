//
//  RecipeView.swift
//  Recipes
//
//  Created by Emil Atanasov on 11/29/22.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe
    var body: some View {
        VStack {
            Text("Изглед на рецепта")
            Image("bonbons")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 300)
                
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.mock)
    }
}
