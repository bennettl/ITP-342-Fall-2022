import Foundation


// Collection Types: Generics data types that enables us to organize data


// ARRAY

// Initalize an array

// Explicit typing
//var names : Array<String> = ["Adam", "Samantha", "Elijah", "Joseph"]

// Shorthand typing
// var names: [String] = ["Adam", "Samantha", "Elijah", "Joseph"]


// Type inference
var names = ["Adam", "Samantha", "Elijah", "Joseph"]

// Access an element
names[2]

// Add an element
names.append("John")
names

// Mutability -> mutate is to change
// collections types immutable by using "let"
// collections type muttable by using "var"

// Remove element
names.remove(at: 1)
names

// See if an element exists
names.contains("Adam")

// Common properties of an arary
names.count
names.isEmpty

// Iterate over an array (go through every element in our collection)

// Iterating without index
for name in names {
    print(index)
}

// Iterating with index
for (index, name) in names.enumerated() {
    print(index)
}

// DICTIONARIES

// Create a dictionary

//let schools: Dictionary<String, String> = [
//    "usc": "University of Southern California",
//    "usf": "University of San Francisco",
//    "ou": "Oregon University"
//]

// Shorthand typing
//let schools: [String : String] = [
//    "usc": "University of Southern California",
//    "usf": "University of San Francisco",
//    "ou": "Oregon University"
//]

// Type Inference
var schools = [
    "usc": "University of Southern California",
    "usf": "University of San Francisco",
    "ou": "Oregon University"
]

// Accessings values given a key
let school = schools["usc"]
schools["random"]

// Set key / value pair
schools["nyu"] = "New York University"
schools

// Updating a key value pair
let oldValue = schools.updateValue("New York U", forKey: "nyu")
oldValue


// Remove key / value pair
schools["usf"] = nil

// Common properties of dictionary
schools.isEmpty
schools.count

// Iterating over a dictionary

for (initial, fullName) in schools {
    print("key \(initial) value \(fullName)")
}

let schoolNames = Array(schools.values)
print(schoolNames)

// SET

//let uniqueNames = Set<String>()

var uniqueNames: Set<String> = []
uniqueNames.insert("Bennett")

uniqueNames.contains("Bennett")

uniqueNames.remove("Bennett")


// Class
class User {
    var name : String?
}

// Structure
struct Item {
    var name : String?
}
//
//// Object
//
//let user = User()
//let users = [user]
//
//
//users[0].name = "John"
//users[0].name

let item = Item()
var items = [item]
items[0].name = "something"


