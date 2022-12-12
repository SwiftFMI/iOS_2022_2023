//
//  ContentView.swift
//  HTTPDemo
//
//  Created by Emil Atanasov on 12/05/22.
//

import Alamofire
import SwiftUI

let `protocol` = "https"
let server = "apposestudio.com"
let prefix = "/swiftfmi"
let allBooksEndpoint = "/books/all.json"
//let query = "?param1=value1&param2=2..."

struct ContentView: View {
    @State var hasError: Bool
    @State var errorLabel: String?
    @State var books = [Book]()
    
    var body: some View {
        NavigationStack {
            if books.count == 0 {
                Button {
//                    fetchDataAF()
//                    Task {
//                        await fetchDataAsync()
//                    }
                } label: {
                    Text("Fetch!")
                }
            } else {
                List(books) { book in
                    NavigationLink(book.title, value: book)
                }
                .navigationDestination(for: Book.self) { book in
                    BookDetailsView(book: book)
                }
                .navigationTitle("Home")
            }
        }
        .task {
            await fetchDataAsync()
        }

    }
    
    func fetchDataAsync() async {
        let fullJSONUrl = `protocol` + "://" + server + prefix + allBooksEndpoint
        guard let url = URL(string: fullJSONUrl) else {
            print("Invalid address: \(fullJSONUrl)")
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            
            let jsonDecoder = JSONDecoder()
            if let books = try? jsonDecoder.decode([Book].self, from: data) {
                self.books = books
            }

            print("Data: \(String(data: data, encoding: .utf8) ?? "nil")")
            print("Response: \(response)")
            
        } catch {
            print("Error: \(error)")
        }
    }
    
    func fetchData() {
        let fullJSONUrl = `protocol` + "://" + server + prefix + allBooksEndpoint
        
        guard let url = URL(string: fullJSONUrl) else {
            print("Invalid address: \(fullJSONUrl)")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
//        request.httpBo
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error {
                print("error: \(error)")
                return
            }
            if let data, let response {
                print("Data: \(String(data: data, encoding: .utf8) ?? "nil")")
                print("Response: \(response)")
            } else {
                print("Data is nil!")
            }
            DispatchQueue.main.async {
                // обновяваме UI от тук
            }
        }
        
        task.resume()
    }
    
    func fetchDataAF() {
        let fullJSONUrl = `protocol` + "://" + server + prefix + allBooksEndpoint
        
        AF.request(fullJSONUrl).response { response in
//            debugPrint(response)
            if let data = response.data {
                let jsonDecoder = JSONDecoder()
                if let books = try? jsonDecoder.decode([Book].self, from: data) {
                    self.books = books
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(hasError: false)
    }
}
