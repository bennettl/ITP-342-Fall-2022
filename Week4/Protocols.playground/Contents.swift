import Foundation


// Delegation

// Protocol

// AKA Interface in other lanagues

// Basic Definition: a list of unimplmented methods that a class or a structure adheres to

protocol Drivable {
    func turnLeft()
    
    func turnRight()
    
    func accelerate(speed: Int)
    
    func decelerate()
}

class Car : Drivable {
  
    func honk() {
        
    }
    
    func turnLeft() {
        print("turning left as a car")
    }
    
    func turnRight() {
        
    }
   
    func accelerate(speed: Int) {
        
    }
    
    func decelerate() {
        
    }
    
    func onlyMazda(){
        
    }
}

class Bike : Drivable {
    func turnLeft() {
        print("turning left as a bike")
    }
    
    func turnRight() {
        
    }
    
    func accelerate(speed: Int) {
        
    }
    
    func decelerate() {
        
    }
}

protocol ABC {
    
}

class Sedan : Car, ABC {
    
}

let mazda : Drivable = Car()
let blueBike = Bike()
let benz: Drivable = Sedan()





// Singleton: Have an object alive / in memory throughout the lifetime of the app
// Reason: This is an object that we are 1) Using very frequently and 2) Using across multiple screens or 3) Sometimes it makes sense to only have one instance of the job
// Example: Current User, UIApplication

struct User {
    let firstName: String
    
    let lastName: String
}

class UserManager {
    
    // Current user needs to be a singleton
    static var current: User? = User(firstName: "Bennett", lastName: "Lee")
    

}


UserManager.current // singleton
UserManager.current = User(firstName: "Sami", lastName: "G")
UserManager.current
UserManager.current
UserManager.current

