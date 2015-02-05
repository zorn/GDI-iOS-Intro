import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func sayMyNameButtonAction(sender: AnyObject) {
        let name = self.nameTextField.text
        println("My name is \(name)");
    }

}

