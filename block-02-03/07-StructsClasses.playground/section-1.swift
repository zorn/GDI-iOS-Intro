import Cocoa

// TODO: Add inheritance demo

struct Vertex {
    var x: Double
    var y: Double
    
    func moveByX(deltaX: Double) -> Vertex {
        return Vertex(x: x + deltaX, y: y)
    }
}

struct Size {
    var width, height: Double
}

struct Rectangle {
    var size: Size
    var topLeftCorner: Vertex
}

var point = Vertex(x: 3.0, y: 4.0)
point = point.moveByX(3)

var rectangle = Rectangle(size: Size(width: 100.0, height: 200.0), topLeftCorner: point)
