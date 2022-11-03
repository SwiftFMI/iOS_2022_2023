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
        if !isLogged {
            VStack {
                Text("Login")
                    .font(.largeTitle)
                    .opacity(isLogged == true ? 0.0 : 1.0)
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Group {
                    ExtractedView(model: $username, isPassword: false)
                    ExtractedView(model: $password, isPassword: true)
                }
                .font(.system(size: 15))
                Button {
                    username = "Hello"
                } label: {
                    Text("Print")
                }
                
            }
            .overlay(alignment: .bottomTrailing) {
                Button {
                    print("Hi")
                } label: {
                    Text("Overlay")
                        .foregroundColor(Color.green)
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
            .environment(\.layoutDirection, .rightToLeft)
    }
}

struct ExtractedView: View {
    @Binding var model: String
    let isPassword: Bool
    var body: some View {
        HStack {
            Text("Username:")
            if !isPassword {
                TextField("", text: $model, prompt: Text("your@email"))
            } else {
                SecureField("", text: $model, prompt: Text("your passsword"))
                    .autocorrectionDisabled(true)
            }
        }
    }
}
