import UIKit

// Status do livro
enum BookStatus {
    case available
    case unavailable
}

// Informações do livro
protocol Book {
    var title: String { get }
    var author: String { get }
    var status: BookStatus { get set }
    
    func displayInfo()
}

// Informações do livro
struct SimpleBook: Book {
    var title: String
    var author: String
    var status: BookStatus
    
    // Exibe informações do livro
    func displayInfo() {
        print("Livro: \(title) - Autor: \(author) - Status: \(status)")
    }
}

// Biblioteca
protocol Library {
    var books: [Book] { get set }
    
    func addBook(_ book: Book)
    func displayAvailableBooks()
}

// Biblioteca específica
class MyLibrary: Library {
    var books: [Book] = []
    
    // Adiciona livro
    func addBook(_ book: Book) {
        books.append(book)
    }
    
    // Exibe livros disponíveis
    func displayAvailableBooks() {
        let availableBooks = books.filter { $0.status == .available }
        print("Livros Disponíveis:")
        for book in availableBooks {
            book.displayInfo()
        }
    }
}

// Uso
let book1 = SimpleBook(title: "A verdade sobre o caso Harry Quebert", author: "Joël Dicker", status: .available)
let book2 = SimpleBook(title: "Flores Para Algernon", author: "Daniel Keyes", status: .available)
let book3 = SimpleBook(title: "O Código Da Vinci", author: "Dan Brown", status: .unavailable)
let book4 = SimpleBook(title: "A Biblioteca da Meia-Noite", author: "Matt Haig", status: .available)

let library = MyLibrary()

library.addBook(book1)
library.addBook(book2)
library.addBook(book3)
library.addBook(book4)

library.displayAvailableBooks()
