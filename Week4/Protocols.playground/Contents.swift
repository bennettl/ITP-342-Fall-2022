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


