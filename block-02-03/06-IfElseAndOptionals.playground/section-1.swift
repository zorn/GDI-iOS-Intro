import Cocoa

// Many times in programming you'll want to perform different code depending on state. These are called control structures. 

// if/else
let a = 45
if (a > 100) {
    println("big number")
} else {
    println("small number")
}

// if elseif ... else
let message = "Hello world!"
let lengthOfMessage = countElements(message)
if (lengthOfMessage > 10) {
    println("not short")
} else if (lengthOfMessage > 5) {
    println("kinda short")
} else {
    println("very short")
}

// optionals -- help represent values that may be nil
let people = ["Mike", "Josh", "Steve"]
let mikeIndex = find(people, "Mike")

if mikeIndex != nil {
    let foundIndex = mikeIndex!
    println(foundIndex)
}

let possibleIndex = find(people, "Josh")
if let foundIndex = possibleIndex {
    println("Found an index for Josh at: \(foundIndex)")
}

if let foundIndex = find(people, "Josh") {
    println("Found an index for Josh at: \(foundIndex)")
}

// switch -- very powerful, can match values, ranges, enums, tupals

var statusCode: Int = 404
var errorString: String
switch statusCode {
    case 400:
        errorString = "Bad request."
    case 401:
        errorString = "Unauthorized."
    case 403:
        errorString = "Forbidden."
    case 404:
        errorString = "Not found."
    default:
        errorString = "None."
}
println(errorString)
