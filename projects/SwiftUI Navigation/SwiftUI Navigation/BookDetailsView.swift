//
//  BookDetailsView.swift
//  SwiftUI Navigation
//
//  Created by Emil Atanasov on 12/05/22.
//

import SwiftUI

struct BookDetailsView: View {
    var book: Book
    var body: some View {
        ScrollView {
            VStack {
//                Text(book.title)
//                    .font(.largeTitle)
                AsyncImage(url: book.imageUrl)
                    .frame(width: 100, height: 100, alignment: .center)
                    .mask(Rectangle())
                    
                Text(book.author)
                    .font(.subheadline)
                Text(book.shortDesctiption)
                    .font(.body)
                    .padding(.top, 50)
                    .padding(.leading, 10)
            }
        }
        .navigationTitle(book.title)
    }
}

struct BookDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailsView(book: Book.mock)
    }
}
