//
//  ContentView.swift
//  FirebaseDemo
//
//  Created by Emil Atanasov on 12/15/22.
//

import SwiftUI
import FirebaseAuth
import FirebaseDatabase
import FirebaseFirestore
import FirebaseStorage

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
            
            Button {
                readDataFromFirestore()
            } label: {
                Text("Read Firestore")
            }
            
            Button {
                uploadFile()
            } label: {
                Text("Upload")
            }

        }
        .padding()
    }
    
    func uploadFile() {
        let storage = Storage.storage()
        let storageRef = storage.reference()

        // Data in memory
        guard let data = "Hello world".data(using: .utf8) else {
            return
        }
        let userId = "my-user-id"
        // Create a reference to the file you want to upload
        let riversRef = storageRef.child("demo/\(userId)/file.txt")

        let uploadTask = riversRef.putData(data, metadata: nil) { (metadata, error) in
          guard let metadata = metadata else {
            // Uh-oh, an error occurred!
            return
          }
          // Metadata contains file metadata such as size, content-type.
          let size = metadata.size
            print("Size: \(size)")
          // You can also access to download URL after upload.
          riversRef.downloadURL { (url, error) in
            guard let downloadURL = url else {
              // Uh-oh, an error occurred!
              return
            }
              print("Download url: \(downloadURL)")
          }
        }
        
    }
    
    func readDataFromFirestore() {
        let db = Firestore.firestore()
        
        let ref = db.collection("game_server")
        // read items
        ref.getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                }
            }
        }
        // add items
//        let doc = ref.addDocument(data: [
//            "room": [ "10": [
//                "players": [ "player_001", "player_002"
//                ]],
//                      "1": [
//                        "players": [ "player_011", "player_012"
//                        ]]
//            ]
//        ]) { err in
//            if let err = err {
//                print("Error adding document: \(err)")
//            } else {
//                print("Document added.")
//            }
//        }
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
        
        ref.child("chats/room/\(roomId)").observe(.childAdded, with: { snapshot in
            if let messages = snapshot.value as? String {
                print("Child: \(messages)")
            }
          })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
