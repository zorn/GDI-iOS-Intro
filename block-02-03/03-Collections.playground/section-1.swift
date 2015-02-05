import Cocoa

// Arrays: Ordered collections. Collections of objects of a specific type.

// Two ways to express a variable that will hold an array of Strings.
var list1: Array<String>
var list2: [String]

// To create an array contents in code we use the Array literal syntax
var nintendoPeople: [String] = ["Mario", "Luigi"]
//var nintendoPeople = ["Mario", "Luigi"]

// arrays can hold multiple instances of the same value
var luckyNumbers: [Int] = [7, 1, 1];

// to add items
nintendoPeople.append("Toad")
nintendoPeople += ["Yoshi"]
// nintendoPeople += "Yoshi"
// notice you can't add a String to an Array, can only add two Arrays together

// to access items, use the index
println(nintendoPeople[2])

// counts
nintendoPeople.count

// to remove items
nintendoPeople.removeAtIndex(2)
println(nintendoPeople)
nintendoPeople.count

// items shift
println(nintendoPeople[2])

let boss = "Bowser"
nintendoPeople.append(boss)

// To remove, need to find its index.
// find() returns an optional -- will explain them shortly
if let foundBossIndex = find(nintendoPeople, boss) {
    nintendoPeople.removeAtIndex(foundBossIndex)
}

// just like others, you can use var or let -- using let makes the collection static and immutable

let triforces = ["Wisdom", "Power", "Courage"]
//triforces.append("Awesomeness") // not allowed

// Dictionaries

// Collections based on keys and values. 

//var movies: Dictionary<String, Int> = ["Godfather": 3, "Ghostbusters": 2];
//var movies: [String: Int] = ["Godfather": 3, "Ghostbusters": 2];
var movies = ["Godfather": 3, "Ghostbusters": 2];

// changing a value
movies["Ghostbusters"] = 3
println(movies)

// adding
movies["Toy Story"] = 3
println(movies)

// alternative ways
//movies += ["The Incredibles": 1] // not sure why this fails
movies["Ths Incredibles"] = 1
println(movies)

// There are friendly methods call updateValue:ForKey: and removeValueForKey: -- they return the old value if present (optionals) -- not going to cover but will mention here.

// just like before using let will make a dictionary a contanst and immutable
let fixedList = ["one" : 1]
//fixedList["two"] = 2 // not allowed


