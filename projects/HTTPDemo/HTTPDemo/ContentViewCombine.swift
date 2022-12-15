//
//  ContentViewCombine.swift
//  HTTPDemo
//
//  Created by Emil Atanasov on 12/12/22.
//

import SwiftUI

struct ContentViewCombine: View {
    @StateObject var network = NetworkModel()
    @AppStorage("my.title") var title: String?
    
    var body: some View {
        NavigationStack {
            if network.books.count == 0 {
                VStack {
                    Button {
                        print("Data: \(network.loadFromUserDefaults() ?? "no data")")
                        if let jsonString = network.loadFromUserDefaults(), let data = jsonString.data(using: .utf8) {
                            let jsonDecoder = JSONDecoder()
                            if let books = try? jsonDecoder.decode([Book].self, from: data) {
                                self.network.books = books
                            }
                        }
//                        network.saveInFile(data: "{}")
//                        network.loadFromFile()
                        network.loadDataFromKeychain()
                        //                    network.loadBooks()
                        //                    network.loadBooks()
                        //                    network.loadBooks()
                        //                    network.loadBooks()
                    } label: {
                        Text("Fetch!")
                    }
                    Button {
                        let ud = UserDefaults()
//                        ud.setValue("Hello!!!", forKey: "my.title")
//                        title = "Hello!"
                    } label: {
                        Text("Set Title")
                    }

                }
            } else {
                List(network.books) { book in
                    NavigationLink(book.title, value: book)
                }
                .navigationDestination(for: Book.self) { book in
                    BookDetailsView(book: book)
                }
                .navigationTitle(title ?? "Home")
            }
        }
    }
}

struct ContentViewCombine_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewCombine()
    }
}
