import Cocoa

// Functions allow us to organize our code. Generally speaking a program is made up of lots of functions

// basic function syntax
func sayHello() {
    println("Hello")
}
sayHello()

// accepting an argument
func welcomeGuest(name: String) {
    println("Welcome \(name)")
}
welcomeGuest("Billy")

// naming the pramater
func goodbyeGuest(Guest name:String) {
    println("Goodbye \(name)")
}
goodbyeGuest(Guest: "Jill")

// use same name as public
func phone(#person: String) {
    println("Calling \(person)")
}
phone(person: "Sam")

// Variadic Paramers
func welcomeGuests(names: String...) {
    for name in names {
        println("Welcome \(name)")
    }
}
welcomeGuests("Amy", "Bill", "Cathy", "Dan")

func message(#name: String, greeting: String = "Hello") {
    println("\(greeting) \(name)")
}
message(name: "James")
message(name: "Harry", greeting: "Goodbye")


// Casting
func divisionDescription(num: Double, den: Double) {
    println("\(num) divided by \(den) equals \(num / den)")
}

// notice how you can type 9 instead of 9.0 because the function suggests the incomming type
divisionDescription(9, 3)

// Returning a value
func add(x: Int, y: Int) -> Int {
    let answer = x + y
    return answer
}
let a1 = add(2,3)
let a2 = add(10, 3)

// can return more than one value via a tuple (named tuple in this case)
func double(x:Int, y:Int) -> (x:Int, y:Int) {
    return(x*2, y*2)
}
let d1 = double(4, 5)
d1.x
d1.y

// functions are first class objects .. can pass functions into functions (clousre), can return functions from functions


// In-Out paramaters -- allow the passed in value to be changed-- not going to cover in class

