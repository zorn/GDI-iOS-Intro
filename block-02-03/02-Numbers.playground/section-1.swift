// Numbers Types: Int, Double and Float

// Int (short for Integers) are whole numbers and best use for keeping a count of things.
let x: Int = 10
let y = 10
let z = -10

// underscores are allowed as commas
let ransom = 1_000_000

Int.max
Int.min

// Since Apple still has some 32-bit based system being supported, Int max and min can be different depending on the hardware in use.

// There is also Unsigned Integer UInt

UInt.max
UInt.min

// And byte count specific options (helpful for algorithms)

Int8.max
Int16.max
Int32.max
Int64.max

// Generally recommend you stick to Int since that's what you'll get back from Apple's functions (even for counts which should never be negative) and will save you time casting things

let i = 1.2 // implicitly Double
let g: Float = 1.2

let oneThirdAsDouble: Double = 1.0/3.0
let oneThirdAsFloat: Float = 1.0/3.0

let heightInInches = 20.3
let numberOfThings = 3 // will be an Int
let totalHeightNeeded = heightInInches * Double(numberOfThings)

// Notice that I had to cast numberOfThings as a Double. Other languages might have done that for you. This is an example of Swift wanting you to be expressive of intent.

// Operations
println(10 + 2)
println(2 * 3)
println(1 / 3)
println(1.0 / 3.0)

// Order of operations: PEMDAS
println(10 + 2 * 5)
println((10 + 2) * 5)

var age = 20
age += 5
println(age)
age++
println(age)
++age
println(age)

// Overflow Operators :: Available, exercise left to the reader...
