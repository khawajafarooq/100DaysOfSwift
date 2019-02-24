import UIKit

// Arrays

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

// accessing array items
beatles[1]

// For type annotations, arrays are written in brackets: [String], [Int], [Double], and [Bool].

// Sets - unorder, unique
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"]) // duplicate removed automatically

// Tuples
var name = (first: "Taylor", last: "Swift")

// accessing tuples holding two values
name.0
name.first


// tuples are fixed size

// Arrays vs Sets vs Tuples
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
address.house

let set = Set(["aardvark", "astronaut", "azalea"])

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
// accessing values

heights["Taylor Swift"]

// For type annotations use: [String: Double] or [String: String] etc.

// Dictionary default values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "Unknown"]


// Creating empty collections
var teams = [String: String]()
teams["Paul"] = "Red"
var scores = Dictionary<String, Int>()
var pref: [String: Int] = [:]

var results = [Int]()
// var results = Array<Int>()
// var results: [Int] = []

var words = Set<String>()
var numbers = Set<Int>()

// Enumerations
let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure
let result5: Result = .success

// Enum associated values

/*
 enum Activity {
 case bored
 case running
 case talking
 case singing
 }
 */

// This makes more sense
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

// Enum raw values
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

// start with a number and swift will count starting from there

enum DayOfWeek: Int {
    case sunday = 1
    case mondday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

let tuesday = DayOfWeek(rawValue: 3)
