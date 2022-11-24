//
//  ContentView.swift
//  SystemPreferencesApp
//
//  Created by Emil Atanasov on 11/17/22.
//

import SwiftUI

struct SystemPreferencesView: View {
    @ObservedObject var model = SystemPreferencesModel.instance
    
    var body: some View {
        NavigationView {
            List {
                ProfileView(profile: model.profile)
                ForEach(model.sections) { section in
                    Section {
                        ForEach(section.items) { item in
                            NavigationLink(destination: EmptyView()) {
                                HStack {
                                    Image(systemName: item.icon)
                                    Text(item.text)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Настройки")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SystemPreferencesView()
    }
}
