import Cocoa

// MARK: - Variables, Constants, Strings & Numbers

let firstName = "Syed Ali"
let lastName = "Raza"

print("Hello", firstName)

var age = 0
age = 2025 - 1994

print("You're", age, "years old.")
print(age.isMultiple(of: 3))

let description = """
Hello, this is a multi-line
string and it starts and ends
with triple quotes. The quotes
have to be on their own lines.
"""

print(description)
print(firstName.uppercased(), "string has", firstName.count, "characters.")

// MARK: - Booleans and String Interpolation
var hasAccess = false
print("\(firstName) has \(hasAccess ? "access" : "no access").")

hasAccess.toggle()
print("\(firstName) has \(hasAccess ? "access" : "no access").")

// MARK: - Checkpoint 1

let temperatureC = 26
let temperatureF = (temperatureC * 9 / 5) + 32
print("\(temperatureC) ºC equals \(temperatureF) ºF")

// MARK: - Arrays, Dictionaries, Sets, and Type Annotations

var numbers: [Int] = [1, 2, 3, 4]
numbers.append(5)
print(numbers, " => Count:", numbers.count)
print("The above list of numbers contains 6? \(numbers.contains(6))")

var songs: Array<String> = []
songs.append("One Love")

var capitals: [String: String] = [:]
capitals["France"] = "Paris"
print(capitals)

capitals = [
    "Germany": "Berlin",
    "Ireland": "Dublin",
    "Pakistan": "Islamabad",
    "Oman": "Muscat"
]

print(capitals)

var diceFaces: Set<Int> = [1, 2, 3 ,4, 5, 6, 2, 3, 4 ,5, 6]
print(diceFaces.count)
print(diceFaces)

enum Direction {
    case north, south, east, west
    case northwest, northsouth
    case southeast, southwest
}

let direction: Direction = .east
print(direction)

// MARK: - Checkpoint 2

let rainbow = ["Red", "Orange", "Yellow", "Green", "Blue", "Indigo", "Voilet"]
print("Rainbow has total \(rainbow.count) colors. It has \(Set(rainbow).count) unique colors.")
