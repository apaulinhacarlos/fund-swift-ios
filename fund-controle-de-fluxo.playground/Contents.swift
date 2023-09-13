import UIKit

// Condicionais
// if // switch

// Laço de Repetição ou loops
// for-in // while // repeat-while

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0

for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

// ---

var optionalString: String? = "Olá"
print(optionalString == nil)

// ---

var optionalName: String? = "Paula Carlos"
var greeting = "Olá"

if let name = optionalName {
    greeting = "Olá, \(name)"
}

// ---

let nickName: String? = nil
let fullName: String = "Tina"
let informalGreeting = "Oi \(nickName ?? fullName)"
print(informalGreeting)

// ---

if let nickName {
    print("Oi, \(nickName)")
}

// ---

let vegetable = "pimentão vermelho"

switch vegetable {
case "salsão":
    print("Adicione algumas uvas passas")
case "pepino", "agrião":
    print("Isso daria um bom sanduíche")
case let x where x.hasPrefix("pimentão"):
    print("é picante \(x)?")
default:
    print("Tudo vai bem na sopa")
}

// ---

let interestingNumbers = [
    "Melhor": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Quadrado": [1, 4, 9, 16, 25]
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}

print(largest)

// ---

var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

// ---

var total1 = 0
for i in 0..<4 { // ..< não inclui o valor
    total1 += i
}
print(total1)

var total2 = 0
for i in 0...4 { // ... inclui o valor
    total2 += i
}
print(total2)
