//
//  RecipeModel.swift
//  Recipes
//
//  Created by Emil Atanasov on 11/29/22.
//

import Foundation
// Рецепта
struct Recipe {
    var title: String
    var image: String
    var timeToPrepare: String
    var engridients: [Ingredient]
}
// съставки
struct Ingredient {
    var name: String
    var mesurement: Mesurements
    var quantity: Double
    var purchased: Bool
}
// видове мерки
enum Mesurements {
    case byWeight
    case byVolume
    case byPiece
    case cup
    case packets
    case spoon
    case unit
}
//модел
class RecipeModel: ObservableObject {
    @Published var recipes: [Recipe]
    init(recipes: [Recipe]) {
        self.recipes = recipes
    }
}
// примерни данни
extension RecipeModel {
    static var mockInstance: RecipeModel {
        RecipeModel(recipes: [
            Recipe(title: "Бишкотена торта с плодове и Бейлис", image: "cake", timeToPrepare: "40 min", engridients: [
                Ingredient(name: "бишкоти савоярди", mesurement: .packets, quantity: 2, purchased: false),
                Ingredient(name: "заквасена сметана", mesurement: .byWeight, quantity: 0.5, purchased: false),
                Ingredient(name: "сладко", mesurement: .cup, quantity: 1, purchased: false),
                Ingredient(name: "пудра захар", mesurement: .cup, quantity: 0.5, purchased: false),
                Ingredient(name: "бейлийс", mesurement: .byVolume, quantity: 0.05, purchased: false),
                Ingredient(name: "прясно мляко", mesurement: .byVolume, quantity: 0.05, purchased: false),
                Ingredient(name: "ягоди", mesurement: .unit, quantity: 10, purchased: false),
                Ingredient(name: "портокал", mesurement: .unit, quantity: 10, purchased: false),
                Ingredient(name: "желатин", mesurement: .byWeight, quantity: 0.01, purchased: false)]
            ),
            Recipe(title: "Сурови бонбони с фурми и портокал", image: "bonbons", timeToPrepare: "60 min", engridients: [
                Ingredient(name: "фурми", mesurement: .cup, quantity: 1, purchased: false),
                Ingredient(name: "овесени ядки", mesurement: .cup, quantity: 1, purchased: false),
                Ingredient(name: "портокалов сок", mesurement: .cup, quantity: 0.5, purchased: false),
                Ingredient(name: "кокосово масло", mesurement: .cup, quantity: 2, purchased: false),
                Ingredient(name: "кокосови стърготини", mesurement: .byWeight, quantity: 0.05, purchased: false),
                Ingredient(name: "орехи", mesurement: .byWeight, quantity: 0.2, purchased: false),
                ]
            ),
            Recipe(title: "Заек със зеленчуци в гювеч", image: "guvetch", timeToPrepare: "120 min", engridients: [
                Ingredient(name: "заек", mesurement: .byWeight, quantity: 1.5, purchased: false),
                Ingredient(name: "брашно", mesurement: .byWeight, quantity: 0.05, purchased: false),
                Ingredient(name: "галета", mesurement: .byWeight, quantity: 0.05, purchased: false),
                Ingredient(name: "олио", mesurement: .spoon, quantity: 8, purchased: false),
                Ingredient(name: "лук", mesurement: .byWeight, quantity: 0.4, purchased: false),
                Ingredient(name: "моркови", mesurement: .byWeight, quantity: 0.4, purchased: false),
                Ingredient(name: "картофи", mesurement: .byWeight, quantity: 0.5, purchased: false),
                Ingredient(name: "чесън", mesurement: .unit, quantity: 2, purchased: false),
                Ingredient(name: "бяло вино", mesurement: .byVolume, quantity: 0.2, purchased: false),
                Ingredient(name: "универсална подправка", mesurement: .spoon, quantity: 1, purchased: false),
                Ingredient(name: "сол", mesurement: .spoon, quantity: 0.05, purchased: false),
                Ingredient(name: "черен пипер", mesurement: .spoon, quantity: 0.1, purchased: false),
                Ingredient(name: "чубрица", mesurement: .spoon, quantity: 0.1, purchased: false),
                Ingredient(name: "магданоз", mesurement: .spoon, quantity: 0.1, purchased: false),
                ]
            ),
            Recipe(title: "Салата от миди и скариди за узо", image: "midiskaridi", timeToPrepare: "30 min", engridients: [
                Ingredient(name: "миди", mesurement: .byWeight, quantity: 0.15, purchased: false),
                Ingredient(name: "скариди", mesurement: .byWeight, quantity: 0.15, purchased: false),
                Ingredient(name: "копър", mesurement: .unit, quantity: 1, purchased: false),
                Ingredient(name: "лимонов сок", mesurement: .unit, quantity: 0.5, purchased: false),
                Ingredient(name: "зехтин", mesurement: .spoon, quantity: 5, purchased: false),
                Ingredient(name: "олио", mesurement: .spoon, quantity: 2, purchased: false),
                Ingredient(name: "чесън", mesurement: .unit, quantity: 0.2, purchased: false),
                Ingredient(name: "сол", mesurement: .spoon, quantity: 0.3, purchased: false),
                ]
            )
        ])
    }
}

extension Recipe {
    static var mock: Recipe {
        Recipe(title: "Бишкотена торта с плодове и Бейлис", image: "cake", timeToPrepare: "40 min", engridients: [
            Ingredient(name: "бишкоти савоярди", mesurement: .packets, quantity: 2, purchased: false),
            Ingredient(name: "заквасена сметана", mesurement: .byWeight, quantity: 0.5, purchased: false),
            Ingredient(name: "сладко", mesurement: .cup, quantity: 1, purchased: false),
            Ingredient(name: "пудра захар", mesurement: .cup, quantity: 0.5, purchased: false),
            Ingredient(name: "бейлийс", mesurement: .byVolume, quantity: 0.05, purchased: false),
            Ingredient(name: "прясно мляко", mesurement: .byVolume, quantity: 0.05, purchased: false),
            Ingredient(name: "ягоди", mesurement: .unit, quantity: 10, purchased: false),
            Ingredient(name: "портокал", mesurement: .unit, quantity: 10, purchased: false),
            Ingredient(name: "желатин", mesurement: .byWeight, quantity: 0.01, purchased: false)]
        )
    }
}
