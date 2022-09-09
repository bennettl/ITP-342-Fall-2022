import Foundation

var myFavoriteNumber = 10

func sayHi(){
    
}

// Class Definition
class Animal {
    
    // Static / class properties
    static var numberOfAnimals = 0
   
    // Properties - data
    
    // Field level initialization
    let name: String = "Kyle"
    
    let color: String
    
    var health: Int
    
    // Initializer
    init(){
        color = "orange"
        health = 100
        Animal.numberOfAnimals += 1
    }
    
    // Custom initalizer
    init(color: String, health: Int){
        self.color = color
        self.health = health
        Animal.numberOfAnimals += 1
    }
    
    // Methods - actions / functionalties
    
    
    func greet(){
        print("Hello my name is \(name) and my health is \(health)")
    }
    
    // Deinitlizer
    deinit {
        // Run some clean up code
    }
}

class Dog : Animal{
    
    override func greet() {
        super.greet()
        print("I'm a dog")
    }
}


class Cat : Animal {
    
}

let dog = Dog()
dog.health
dog.greet()

// Objects -> instances of class
let kyle = Animal()
kyle.health
kyle.greet()
kyle.health = 20
kyle.greet()

let sammy = Animal(color: "Yellow", health: 90)
sammy.health
sammy.greet()

// Structures

// Defining a structure
struct Person {
    // Properties
    let name : String
    
    var age : Int
    
    // Methods
    func greet(){
        print("Hi my name is \(name) and \(age)")
    }
}

// Instantiate a structure

// Memberwise intializer
let bennett = Person(name: "Bennett", age: 29)
bennett.name
bennett.greet()


struct Square {
    
    // Store properties
    var width: Double
    
    var height: Double
    
    // Computed properties
    var area: Double {
        set {
            width = newValue / 2
            height = newValue / 2
        }
        get {
            return width * height
        }
    }
   
    
}

var rect = Square(width: 50, height: 50)
rect.area
rect.area = 70
rect.height




// Int, Double, String -> Value types

var myFavoriteNumber1: Int = 10
var myFavoriteNumber2 = myFavoriteNumber1


// Access modifiers

// Practice principal of least privilege
// Apply these access modifiers to class, structures, properties, methods

// private - accessible within the same class / structure
// fileprivate - accessible within the same .swift / source file
// internal - accesible within the same module. default access modifier
// public - accesible outside the module, BUT not subclassable
// open - accesible outside the module, AND is subclassable

struct Phone {
    private let number: String = "415----"
    
    func greet(){
        print("the number is \(number)")
    }
}

let iPhone = Phone()
iPhone.greet()


print("Animal.numberOfAnimals \(Animal.numberOfAnimals)")
