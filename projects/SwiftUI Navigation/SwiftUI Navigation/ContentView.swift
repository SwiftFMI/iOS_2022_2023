//
//  ContentView.swift
//  SwiftUI Navigation
//
//  Created by Emil Atanasov on 10/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                NavigationLink {
                    DetailsView()
                } label: {
                    Text("Details")
                }

            }
            .padding()
        }
        .navigationTitle("Main screen")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
