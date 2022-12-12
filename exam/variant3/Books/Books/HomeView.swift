//
//  HomeView.swift
//  Books
//
//  Created by Emil Atanasov on 11/29/22.
//

import SwiftUI

struct HomeView: View {
    @StateObject var model = BooksModel.mock
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
