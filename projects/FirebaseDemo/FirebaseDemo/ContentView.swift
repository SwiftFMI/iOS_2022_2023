//
//  ContentView.swift
//  FirebaseDemo
//
//  Created by Emil Atanasov on 12/15/22.
//

import SwiftUI
import FirebaseAuth
import FirebaseDatabase

struct ContentView: View {
    let email = "test@my.company.com"
    let password = "password"
    var body: some View {
        VStack {
            Button {
                Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                  // ...
                }
            } label: {
                Text("Creat")
            }
            
            Button {
                Auth.auth().signIn(withEmail: email, password: password) { result, error in
                    if let result {
                        print("auth: \(result.user.uid)")
                    } else {
                        print("Unable to sing in :(")
                    }
                    
                    // ...
                  }
            } label: {
                Text("Login")
            }
            
            Button {
                readDataFromDB()
            } label: {
                Text("Read Data")
            }

        }
        .padding()
    }
    
    func readDataFromDB() {
        let ref = Database.database(url: "https://iosswiftfmi-default-rtdb.europe-west1.firebasedatabase.app").reference()
//    https://iosswiftfmi-default-rtdb.europe-west1.firebasedatabase.app/
        
        let roomId = "101"
        ref.child("chats/room/\(roomId)").getData(completion:  { error, snapshot in
          guard error == nil else {
            print(error!.localizedDescription)
            return;
          }
            let messages = snapshot?.value as? Dictionary<String, String>
            print("Messages: \(messages?["user_1"])")
//            let userName = snapshot?.value as? String ?? "Unknown";
        });
        
        ref.child("chats/room/\(roomId)").observe(.childChanged, with: { snapshot in
            if let messages = snapshot.value as? String {
                print("Messages: \(messages)")
            }
          })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
