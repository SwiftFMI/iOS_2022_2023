//
//  CombineModel.swift
//  HTTPDemo
//
//  Created by Emil Atanasov on 12/12/22.
//

import Foundation
import Combine

let key = "user.defaults.string"

class NetworkModel: ObservableObject {
    @Published var books = [Book]()
    
    private var cancellableBag = Set<AnyCancellable>()
    private var cancellable: AnyCancellable?
    
    func loadBooks() {
        let fullJSONUrl = `protocol` + "://" + server + prefix + allBooksEndpoint

        guard let url = URL(string: fullJSONUrl) else {
            print("Invalid address: \(fullJSONUrl)")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        URLSession.shared
            .dataTaskPublisher(for: request)
            .map { [weak self] response in
                let data = response.data
                if let text = String(data: data, encoding: .utf8) {
                    self?.saveToUserDefaults(data: text)
                }
                return data
            }
            .decode(type: [Book].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in
                    // nothing
            }) { [weak self] books in
                self?.books.append(contentsOf: books)
            }
            .store(in: &cancellableBag)
            
    }
    
    func saveToUserDefaults(data: String) {
        let ud = UserDefaults()
        ud.setValue(data, forKey: key)
    }
    
    func loadFromUserDefaults() -> String? {
        let ud = UserDefaults()
        return ud.string(forKey: key)
    }
    
    func saveInFile(data: String) {
        if let docDir = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true) {
            print(docDir.path)
            if FileManager.default.createFile(atPath: docDir.path + "/" + "books.json", contents: data.data(using: .utf8)) {
                print("File was created.")
            } else {
                print("Unable to save file.")
            }
        }
        
        
    }
    
    func loadFromFile() -> String? {
        if let docDir = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true) {
            print(docDir.path)
            let url = docDir.appending(path: "books.json")
            print("url: \(url)")
            if let data = try? Data(contentsOf: url ) {
                let s = String(data: data, encoding: .utf8)
                print("Data: \(s)")
            }
        }
        
        return nil
    }
    
    func saveDataKeychain() {
        let account = "demo"
        if let password = "test".data(using: String.Encoding.utf8) {
            var query: [String: Any] = [kSecClass as String: kSecClassInternetPassword,
                                        kSecAttrAccount as String: account,
                                        kSecAttrServer as String: server,
                                        kSecValueData as String: password]
            
            let status = SecItemAdd(query as CFDictionary, nil)
            guard status == errSecSuccess else {
                print("Error")
                return
            }
        }
    }
    
    func loadDataFromKeychain() {
        let account = "demo"
        let query: [String: Any] = [kSecClass as String: kSecClassInternetPassword,
                                    kSecAttrServer as String: server,
                                    kSecMatchLimit as String: kSecMatchLimitOne,
                                    kSecReturnAttributes as String: true,
                                    kSecReturnData as String: true]
            
            DispatchQueue.main.async {
                var item: CFTypeRef?
                let result = SecItemCopyMatching(query as CFDictionary, &item)
                print(item?[kSecAttrAccount])
            }
        
    }
}
