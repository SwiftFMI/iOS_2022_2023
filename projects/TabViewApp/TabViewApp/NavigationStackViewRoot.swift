//
//  NavigationStackViewRoot.swift
//  TabViewApp
//
//  Created by Emil Atanasov on 11/21/22.
//

import SwiftUI

struct NavigationStackViewRoot: View {
    @State private var path: [Color] = []
    
    var body: some View {
//        NavigationStack {
//                List {
//                    NavigationLink("Purple", value: .purple)
//                    NavigationLink("Pink", value: .pink)
//                    NavigationLink("Orange", value: .orange)
//                }
//                .navigationDestination(for: Color.self) { color in
//                    ColorDetailView(color: color)
//                }
//            }
//        NavigationStack {
//            List {
//                NavigationLink("Purple", value: .purple)
//                NavigationLink("Pink", value: .pink)
//                NavigationLink("Orange", value: .orange)
//            }
//            .navigationDestination(for: Color.self) { color in
//                ColorDetailView(color: color)
//            }
//        }
        Text("test")
    }
}

struct NavigationStackViewRoot_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackViewRoot()
    }
}
