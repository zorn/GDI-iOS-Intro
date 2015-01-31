// When we say "Types" we are referring to the types of data Swift can work with. Some examples of native types you'll see lots of include String and Bool. When it comes to numbers you'll see things like Int, Double and Float.

"Hello World"
true
false
3
3.14

// Variables. To solve problems in programming we usually need to store values somewhere in memory. One way to do this is to use a Variable.
var myName: String = "Mike Zornek"
var likesCake: Bool = true

// Variables can be changed over time.
myName = "Michael Zornek" // more formal name for official business
likesCake = false // turning this to false while I'm on my diet

// Constants are like variables in that you are storing a value in memory but constants can not be changed.
let eyeColor: String = "green"
//eyeColor = "blue" // will not compile, cause warning

// Constants are very much favored over variables in Swift. In general the preference is for immutable things, values that do no change over time.

// Connstant/Variable nameing style.
// In Apple's code you'll find they use the CammelCase style where the initial character is lowercase and where in english you'd normally have a space there is no space and the
// https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/CodingGuidelines/CodingGuidelines.html

// Type Inference
// Notice how in the previous examples we were very specific about the type we were going to use. Swift does not actually require this. Swift's complier can use something called Type Inference to figure out your intention and use that type.

let message = "Hello World"
let enableEmail = true

// Strig Interpolation
let dogName = "fido"
let helpWantedMessage = "Looking for dog sitter for \(dogName)"
let altMessage = "Looking for dog sitter for " + dogName

// Console Logging
println(helpWantedMessage)
println("Can interpolate here too! Right \(dogName)?")
