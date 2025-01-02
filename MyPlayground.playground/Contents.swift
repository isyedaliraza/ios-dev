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

// MARK: - Control Flow
let condition = true

if condition {
    print("Condition is true")
} else if string5 != nil {
    print(string5!)
} else {
    print("Something went wrong!")
}

let fruits = ["Apple", "Banana", "Oranges"]

for fruit in fruits {
    print("I like to eat eat eat \(fruit)")
}

var person: [String: String] = [:]
person["name"] = "Taylor Swift"
person["age"] = "30"
person["job"] = "Singer"

for (key, value) in person {
    print("\(key): \(value)")
}

let vegetable = "Cucumber"
let vegetableComment: String
switch vegetable {
case "Tomato":
    vegetableComment = "Tomato tamato"
case "Onions", "Egg plant":
    vegetableComment = "Make a dish"
case let localScopeValue where localScopeValue.hasSuffix("pepper"):
    vegetableComment = "Spicy"
default:
    vegetableComment = "Good day"
}

print(vegetableComment)

switch person {
case let p where p["name"] == "Taylor Swift":
    print("I am taylor swift")
default:
    print("I am someone you don't know")
}

for i in 1...10 {
    if i % 2 == 0 {
        print(i, terminator: "")
    }
}

for i in 1..<10 {
    if i % 2 == 0 {
        print(i, terminator: "")
    }
}

print("")

var counter = 1
while counter < 10 {
    print(counter, terminator: ", ")
    counter += 1
}

counter = 1
repeat {
    print(counter, terminator: ", ")
    counter += 1
} while counter < 10
