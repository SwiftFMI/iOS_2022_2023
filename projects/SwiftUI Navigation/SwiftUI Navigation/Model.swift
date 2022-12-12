//
//  Model.swift
//  SwiftUI Navigation
//
//  Created by Emil Atanasov on 12/05/22.
//

import Foundation

/// Модел представящ книга
struct Book: Codable {
    var title: String
    var author: String
    var image: String
    var shortDesctiption: String
    var progress: Double
    var isOwned: Bool
}

extension Book {
    var imageUrl: URL? {
        let url = `protocol` + "://" + server + prefix + "/books/" + image + ".jpg"
        return URL(string: url)
    }
}


extension Book {
    static var mock:Book {
        Book(title: "Sapience", author:"Yuval Noah Harari", image: "sapience", shortDesctiption:
                """
            100,000 years ago, at least six human species inhabited the earth. Today there is just one. Us. Homo sapiens.
             How did our species succeed in the battle for dominance? Why did our foraging ancestors come together to create cities and kingdoms? How did we come to believe in gods, nations and human rights; to trust money, books and laws; and to be enslaved by bureaucracy, timetables and consumerism? And what will our world be like in the millennia to come?

             In Sapiens, Dr Yuval Noah Harari spans the whole of human history, from the very first humans to walk the earth to the radical – and sometimes devastating – breakthroughs of the Cognitive, Agricultural and Scientific Revolutions. Drawing on insights from biology, anthropology, paleontology and economics, he explores how the currents of history have shaped our human societies, the animals and plants around us, and even our personalities. Have we become happier as history has unfolded? Can we ever free our behaviour from the heritage of our ancestors? And what, if anything, can we do to influence the course of the centuries to come?

             Bold, wide-ranging and provocative, Sapiens challenges everything we thought we knew about being human: our thoughts, our actions, our power ... and our future.
            """, progress: 0, isOwned: false)
    }
}

extension Book: Identifiable {
    var id: String {
        title
    }
}

extension Book: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
}
