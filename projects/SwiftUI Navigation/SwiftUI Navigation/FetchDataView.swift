//
//  FetchDataView.swift
//  SwiftUI Navigation
//
//  Created by Emil Atanasov on 12/05/22.
//

import SwiftUI

let server = "https://apposestudio.com"
let prefix = "/swiftfmi"
let allBooksEndpoint = "/books/all.json"

struct FetchDataView: View {
    
    @State var books = [Book]()
    
    var body: some View {
        NavigationStack {
            if books.count == 0 {
                Button {
//                    fetchData()
                    Task {
                        await fetchDataAsync()
                    }
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

    func fetchData() {
        let urlAddress = server + prefix + allBooksEndpoint
        guard let url = URL(string: urlAddress) else {
            print("Unable to download the JSON")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
//        request.httpBody = "".data(using: .utf8)
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            // new syntax since Swift 5.7
            if let error {
                print("Error: \(error)")
                return
            }
            if let data, let response {
                let decode = JSONDecoder()
           
//                if let books = try? decode.decode([Book].self, from: data) {
//                    self.books = books
//                } else {
//                    print("Unable to decode...")
//                }
                
                do {
                    let books = try decode.decode([Book].self, from: data)
                    self.books = books
                } catch {
                    print("Unable to parse...")
                }
        
                print("Data: ", String(data: data, encoding: .utf8) ?? "nil")
                print("Response: \(response)")
            }
            
        }
        task.resume()
    }
    
    func fetchDataAsync() async {
        let urlAddress = server + prefix + allBooksEndpoint
        guard let url = URL(string: urlAddress) else {
            print("Unable to download the JSON")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
//        request.httpBody = "".data(using: .utf8)
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            
            guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetching data") }
            
            let decode = JSONDecoder()
            if let books = try? decode.decode([Book].self, from: data) {
                self.books = books
            } else {
                print("Unable to decode...")
            }

            print("Data: ", String(data: data, encoding: .utf8) ?? "nil")
            print("Response: \(response)")
            
        } catch {
            print("Error: \(error)")
            return
        }
    }
}

struct FetchDataView_Previews: PreviewProvider {
    static var previews: some View {
        FetchDataView()
    }
}
