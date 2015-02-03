import UIKit

protocol NewToDoItemViewControllerDelegate {
    func newToDoItemViewControllerDidFinishWithToDoItem(newtoDoItem: ToDoItem?)
}

class NewToDoItemViewController : UIViewController {
    var delegate: NewToDoItemViewControllerDelegate
}