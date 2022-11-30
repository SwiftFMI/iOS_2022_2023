//
//  SwiftUI_NavigationApp.swift
//  SwiftUI Navigation
//
//  Created by Emil Atanasov on 10/07/22.
//

import SwiftUI

@main
struct SwiftUI_NavigationApp: App {
    var body: some Scene {
        WindowGroup {
            if #available(iOS 16.0, *) {
//                HomeView()
                CarListView()
            } else {
                ContentView()
            }
        }
    }
}
