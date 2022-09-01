import Foundation


// This is single line comment

/*
This is multiline comment
 
 */

let myFavoriteNumber : Double = 230.10

var myFavoriteColor : String = "Mint"

// Type Inference

var greeting = "Hello,  playground"

var number : Float = 23.0

var result = 23.0 / 4.0

// String Interpolation

let message = "Jacob \(result) years old"

print(message)


let x = 5 > 10
print(x)

let favoriteSchool = "USC"

if favoriteSchool == "USC" {
    print("Welcome!")
} else if favoriteSchool == "UCLA" {
    print("Nope")
} else if favoriteSchool == "LACC" {
    print("Thumbs Up!")
} else {
    print("Try again")
}

switch favoriteSchool {
    case "USC", "LACC":
        print("Welcome!")
    case "UCLA":
        print("Nope")
    default:
        print("Try again")
}


for i in 0..<5 {
    if i == 3 {
        continue
    }
    // continue
    // break
    print("The number is \(i)")
}


