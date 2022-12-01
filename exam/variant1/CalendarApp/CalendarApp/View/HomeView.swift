//
//  ContentView.swift
//  CalendarApp
//
//  Created by Emil Atanasov on 11/26/22.
//

import SwiftUI

struct HomeView: View {
    // Това е статичен модел. Ако искаме да го редактираме
    // трябва да определим като "състояние".
    var model: CalendarModel = CalendarModel.mockInstance
    var body: some View {
        // Ако искаме навигация, тогава трябва да подготвим това view
        VStack {
            Text("Тук трябва да се изобрази календара")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
