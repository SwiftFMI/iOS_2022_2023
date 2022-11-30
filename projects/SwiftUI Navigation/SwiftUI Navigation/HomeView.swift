//
//  HomeView.swift
//  SwiftUI Navigation
//
//  Created by Emil Atanasov on 12/01/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
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
            .navigationTitle("Home screen")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
