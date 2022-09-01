import Foundation

// DRY: Don't Repeat Yourself

// Functions

// Definition

//func greeting(firstName: String, lastName: String) {
//    print("Welcome \(firstName) \(lastName)")
//}
//
//// Invocation
//greeting(firstName: "Adam", lastName: "Smith")
//greeting(firstName: "Jamie", lastName: "Anderson")
//
//// Functions with inputs
//func multiply(x: Int, y: Int){
//    print("The result is \(x * y)")
//}
//
//func divide(numerator: Double, denomintor: Double = 2.0){
//    print("The result is \(numerator / denomintor)")
//}
//
//divide(numerator: 10.0)
//
//
//// Functions with outputs
//
//func sum(x: Int, y: Int) -> Int {
//    return x + y
//}
//
//let result = sum(x: 10, y: 20)
//print("The result is \(result)")
//
//// Tuple - lightweight array
//let data = (200, "Ok")
//data.0
//data.1
//
//func makeNetworkRequest () -> (Int, String) {
//    return (200, "Ok")
//}
//
//let networkResult = makeNetworkRequest()
//let statusCode = networkResult.0
//let statusText = networkResult.1
//
//// Argument labels
//
//// Have argument label different than parameter names
//func subtract(firstNumber: Int, from secondNumber: Int) {
//    print("subtract \(firstNumber - secondNumber)")
//}
//
//// Omitting argument labels
////func subtract(_ firstNumber: Int, _ secondNumber: Int) {
////    print("subtract \(firstNumber - secondNumber)")
////}
//
//subtract(firstNumber: 20, from: 30)
//
//// Variadic Parameters
//
//
//func add(numbers: Int...){
//    var sum = 0
//    for number in numbers{
//        sum += number
//    }
//    print("The result is \(sum)")
//}
//
//add(numbers: 1,2,3,4,5,7,8,9,19)
//
//
//func changeName(name: inout String){
//    name = "John"
//}
//
//var originalName = "Bennett"
//changeName(name: &originalName)
//
//print("the name is \(originalName)")
//
//
//var mathFunction: (Int, Int) -> Void = multiply
//mathFunction(20,30)
//mathFunction = subtract
//mathFunction(20,30)
//
//
//var welcome = "Hello"
//
//welcome[welcome.startIndex] // H
//welcome[welcome.index(before: welcome.endIndex)] // O
//
//for index in welcome.indices{
//    print(welcome[index])
//}
//
//// welcome[welcome.startIndex...welcome.index( welcome.endIndex, offsetBy: -3)]
//
//"".isEmpty
//

// Optionals exist to fix "Billion Dollar Mistake"


// Null pointer exceptions

// null.doSomething()

// Two Rules
// 1) Every variable and constant needs to have a value
// 2) If there is ANY POSSIBILITY a variable can be nil, mark it as a Optional


//var myFavoriteNumber: Optional<Int> = nil

// Shorthand
var myFavoriteNumber: Int? = 100


// When a variable is marked as an optional, there can be two possible states
    // 1. It has a value, and it equals X
    // 2. It has no value, and it's nil

// Accessing underlying values within an optional

// 1. Force Unwrapping
//print(myFavoriteNumber!)

// 2. Conditional Binding - if there is value inside of an optional, use it. If not, ignore

if let value = myFavoriteNumber {
    print("value is \(value)")
} else{
    print("there is no value")
}

// 3. Implicitly Unwrapped Optional

// Implicity unwrapped optional
//var myFavoriteNumber: Int! = 100
//
//print(myFavoriteNumber)
//print(myFavoriteNumber)
//print(myFavoriteNumber)
//print(myFavoriteNumber)
//print(myFavoriteNumber)
//print(myFavoriteNumber)

// 4. Optional Chaining

// Relevant when working with objects, that have properties as optional

// 5. Nil coalencing operation

let secondFavoriteNumber = myFavoriteNumber ?? 10
