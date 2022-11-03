//
//  LoginForm.swift
//  LoginApp
//
//  Created by Emil Atanasov on 10/31/22.
//

import SwiftUI

struct LoginForm: View {
    // no state
    var body: some View {
        VStack {
            Text("Login")
                .font(.largeTitle)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            HStack {
                Text("Username:")
            }
            HStack {
                Text("Password:")
            }
            Button {
                print("Nothing")
            } label: {
                Text("Print")
            }
        }
    }
}

struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm()
    }
}
