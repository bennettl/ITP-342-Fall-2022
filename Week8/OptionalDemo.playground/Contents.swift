import Foundation

var greeting = "Hello, playground"

struct User {
    
    let firstName : String
    
    let lastName: String?
    
    let phoneNumber: String
}


func printUser(firstName: String?, lastName: String?, phoneNumber: String?) -> User?{
    
    // Swift 5.7 / Xcode 14
    // Shorthand for optional binding
    if let firstName {
        print("\(firstName)")
    }

    // Guard statement
    
    guard let firstName, let lastName , let phoneNumber else
    {
        return nil
    }
    
    // Anti-pattern: rightward drift of code, harder to understand
    
    // if all parameters exist, create a user
    
    return User(firstName: firstName, lastName: lastName, phoneNumber: phoneNumber)
        

    
}
