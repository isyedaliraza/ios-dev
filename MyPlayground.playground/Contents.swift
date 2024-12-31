import Cocoa

// This is a single line comment

/*
 This is a multiline comment
 */

// MARK: Section
// MARK: - Section with divider
// TODO: something pending
// FIXME: fix code here

//
// MARK: - Variables
//

let name = "Syed Ali Raza"
var age = 30
age = age + 1

print("Hello, my name is \(name) and I'm \(age) years old.")

var someString: String
var someInt: Int
var someDouble: Double
var someFloat: Float
var someBoolean: Bool
var someArray: [String]
var someDict: [String: String]

someString = #"I am a string \ I have different delimeter. "Backslash don't work here.""#
print(someString)

someString = """
I am a multiline string
I can be used with three triple quotes
the starting and ending triple quotes 
must appear on their own lines.
"""

print(someString)

// MARK: - Arrays

let cities = ["Paris", "Tokyo", "Rome"]

/* The following code throws a compile-time error
because arrays declared with let are immutable:
    cities[0] = "New York"
    cities = ["Circle", "Rectangle", "Triangle"]
*/

print(cities[1])

// Arrays are structs so they are copied by value not reference


// MARK: - Dictionaries

let electronics = [
    0: "Camera",
    1: "Laptop",
    2: "Raspberry Pi"
]

print(electronics[0] ?? "Unknown")

// Dictionaries declared with let are immutable.
// The following throws a compile time error
// electronics[3] = "Console"

// Dictionaries are also structs and copied by value
var mutableElectronics = electronics
mutableElectronics[3] = "Console"

let electronics1 = [
    "first": "Computer",
    "second": "Speakers"
]

let electronics2 = [
    "first": "Computer",
    "second": "Speakers"
]

// == equality check by value
print(electronics1 == electronics2)

var mutableCities = cities

mutableCities.append("Portlaoise")
mutableElectronics[3] = "Xbox"

mutableCities = []
mutableElectronics = [:]

// MARK: - Optionals

let optionalString1: String? = "A value"
let optionalString2: String? = nil

// Swift requires every variable or constant to have a type
// that's why even nil assignment requires a type declaration

if optionalString1 != nil {
    print(optionalString1!)
} else {
    print("optionalString1 is nil")
}

if let string3 = optionalString2 {
    print(string3.count)
    print(string3)
} else {
    print("optionalString2 is nil")
}

if let string4 = optionalString1, age < 29 {
    print(string4)
    print("age is less than 29")
} else {
    print("age is greater than or equals to 29")
}

let string5: String! = "ImplicitlyUnwrappedOptionalString"
print(string5 ?? "Some default")
print(string5.count)
