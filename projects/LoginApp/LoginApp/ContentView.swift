//
//  ContentView.swift
//  LoginApp
//
//  Created by Emil Atanasov on 10/20/22.
//

import SwiftUI

struct ContentView: View {
    @State var username: String
    @State var password: String = ""
    var body: some View {
        VStack {
            Text("Login")
                .font(.largeTitle)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            HStack {
                Text("Username:")
                TextField("", text: $username, prompt: Text("your@email"))
            }
            HStack {
                Text("Password:")
                VStack {
                    SecureField("", text: $password, prompt: Text("your passsword"))
                        .autocorrectionDisabled(true)
                }
                
            }
            
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(username: "")
    }
}
