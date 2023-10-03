import UIKit

// Gerenciamento de uma Biblioteca

// Status do livro
enum BookStatus {
    case available
    case unavailable
}

// Informações do livro
class Book {
    var title: String
    var author: String
    var status: BookStatus
    
    init(title: String, author: String, status: BookStatus) {
        self.title = title
        self.author = author
        self.status = status
    }
}

// Biblioteca
class Library {
    var books: [Book]
    
    init(books: [Book]) {
        self.books = books
    }
    
    // Verifica disponibilidade do livro
    func hasBook(title: String) -> Bool {
        for book in books {
            if book.title == title && book.status == .available {
                return true
            }
        }
        return false
    }
}

// Uso
let book1 = Book(title: "A verdade sobre o caso Harry Quebert", author: "Joël Dicker", status: .available)
let book2 = Book(title: "Flores Para Algernon", author: "Daniel Keyes", status: .available)
let book3 = Book(title: "O Código Da Vinci", author: "Dan Brown", status: .unavailable)
let book4 = Book(title: "A Biblioteca da Meia-Noite", author: "Matt Haig", status: .available)

let library = Library(books: [book1, book2, book3, book4])

if library.hasBook(title: book3.title) {
    print("O livro \(book3.title) está disponível!")
} else {
    print("O livro \(book3.title) está indisponível! Tente novamente")
}

