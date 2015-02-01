import Cocoa

// ranges
0...2 // up to and including 2
0..<3 // up to but not including 3

// you can use ranges in array
let nintendoPeople = ["Mario", "Luigi", "Toad", "Peach", "Bowser"]
let playable = nintendoPeople[0...3]

// loops -- iterate 

// for in loop

for i in 0...10 {
    println("This is i \(i)")
}

// can use underscore as kind of sign you don't need an assignment, helpful for simple count loops
for _ in 0..<3 {
    println("Beatlejuice!")
}

// loop through array
for person in nintendoPeople {
    println("Found person: \(person)")
}

// loop through dictionary
let movies = ["Godfather": 3, "Ghostbusters": 2];
for (title, sequalCount) in movies {
    println("The movie \(title) had \(sequalCount) sequals.")
}

// can ask a dictionary for an array of keys and values and use those too.

// old school for loop

// for initialization; condition; increment {    // Code to execute at each iteration//}

for var g = 1; g <= 5; ++g {
    println("g is \(g)")
}

// while do loop
// do while loop