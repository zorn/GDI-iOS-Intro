import Foundation

struct ToDoItem: Equatable {
    let name: String
    let isDone: Bool
}

func ==(lhs: ToDoItem, rhs: ToDoItem) -> Bool {
    return lhs.name == rhs.name && lhs.isDone == rhs.isDone
}