import Foundation

var greeting = "Hello, playground"

// Closures: A block of functionality / code

// 1) Named (functions)
func sayHello(){
    print("hi")
}

sayHello()

// 2) Unnamed closures
// Closure expressions

var students = ["Chris", "Angela", "Bennett", "Hannah", "John"]

//
//"A" > "Z"
//"A" < "Z"


func mySortFunction(s1: String, s2: String) -> Bool {
    return s1 > s2
}

// sort method accepts a closure with a signature of (String, String) -> Bool
//students.sort(by: mySortFunction(s1:s2:))

// Define block of code inline using closure expression
students.sort(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})

// Type inference
students.sort(by: { (s1, s2) in
    return s1 > s2
})

// Single expression closure
students.sort(by: { (s1, s2) in s1 > s2 })

// Trailing closures (closure is the last argument in the argument list) don't need a label and don't need to be inside the parameter list
students.sort { (s1, s2) in s1 > s2 }

// Argument shorthand
// Swift automatically creates variables for arguments in the fashion: $0, $1, $2 ... to the number of arguments for the closure
students.sort { $0 > $1 }




print(students)


func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    // Encapsulation
    var runningTotal = 0
    return {() -> Int in
        runningTotal += amount
        return runningTotal
    }
}

// Creates the internal closure
var incrementByTen = makeIncrementer(forIncrement: 10)

// Closure are references types
var incrementByTenTwo = incrementByTen
incrementByTenTwo()

// Executes the internal closure
incrementByTen()
incrementByTen()
incrementByTen()

var anotherIncrementByTen = makeIncrementer(forIncrement: 10)
anotherIncrementByTen()



// Regressions: New bugs are introduced to existing features
// Manual testing is less effective as the surface of your app increase
// Automated test is used to catch regressions on apps with more features

// Testing >> Quality

// Phases of testing

// 1. Set up the context (get the environment ready)
    // Initializing the objects you need to use
    // Navigating to a specific screen and filling a form

// 2. Execute the functionality / method (try to limit to one operation)
    // Invoking a method on an object
    // Click a button

// 3. Asserting that the expected behavior matches the actual behavior
