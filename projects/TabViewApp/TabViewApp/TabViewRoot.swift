//
//  ContentView.swift
//  TabViewApp
//
//  Created by Emil Atanasov on 11/21/22.
//

import SwiftUI

struct TabViewRoot: View {
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            ReceivedView()
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            MyProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewRoot()
    }
}


