let firstName = "Steve"
var lastName: String! = "Jobs"

print("\(firstName) \(lastName ?? "Wozniak")")

// opcao 1
if lastName != "Jobs" {
    print("\(firstName) Wozniak")
} else {
    print("\(firstName) \(String(describing: lastName))")
}

// opcao 2
if let jobsName = lastName {
    print("\(firstName) \(jobsName)")
} else {
    print("\(firstName) Wozniak")
}
