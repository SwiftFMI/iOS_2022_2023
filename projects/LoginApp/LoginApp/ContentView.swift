//
//  ContentView.swift
//  LoginApp
//
//  Created by Emil Atanasov on 10/20/22.
//

import SwiftUI

struct ContentView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var isLogged = false
    var body: some View {
        if isLogged {
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
                    SecureField("", text: $password, prompt: Text("your passsword"))
                        .autocorrectionDisabled(true)
                }
                Button {
                    username = "Hello"
                } label: {
                    Text("Print")
                }
            }
            .padding()
        } else {
            Text("Noooo!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(username: "")
    }
}
