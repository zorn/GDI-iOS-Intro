import UIKit

protocol NewToDoItemViewControllerDelegate {
    func newToDoItemViewControllerDidFinishWithToDoItem(newToDoItem: ToDoItem?)
}

class NewToDoItemViewController : UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    
    var delegate: NewToDoItemViewControllerDelegate?

    @IBAction func save(sender: AnyObject) {
        self.titleTextField.resignFirstResponder()
        let newToDoItem = ToDoItem(name: self.titleTextField.text, isDone: false)
        self.delegate?.newToDoItemViewControllerDidFinishWithToDoItem(newToDoItem)
    }
    
    @IBAction func cancel(sender: AnyObject) {
        self.delegate?.newToDoItemViewControllerDidFinishWithToDoItem(nil)
    }
}