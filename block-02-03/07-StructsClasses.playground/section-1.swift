import Cocoa

struct ToDoItem {
    let name: String
}

let buyCar = ToDoItem(name: "Buy a car")

// Fails cause you need to supply a name
// let walkDog = ToDoItem()

// By convention you should not mutate or change the inner values of structs. In a case where you want to, consider returing a new stuct with the result like this:

struct Vertex {
    
    let x: Double
    let y: Double
    
    func moveByX(deltaX: Double) -> Vertex {
        return Vertex(x: x + deltaX, y: y)
    }
}

var point = Vertex(x: 3.0, y: 4.0)
point = point.moveByX(3)

// Structs can be used as types for other stucts

struct Size {
    let width, height: Double
}

struct Rectangle {
    let size: Size
    let topLeftCorner: Vertex
}

let posterSize = Size(width: 100.0, height: 200.0)
let posterRectangle = Rectangle(size: posterSize, topLeftCorner: point)

// Classes

class Animal {
    let name: String
    
    
}












