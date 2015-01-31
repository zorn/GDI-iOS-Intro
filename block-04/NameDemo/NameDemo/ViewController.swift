import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func sayMyNameButtonAction(sender: AnyObject) {
        let name = self.nameTextField.text
        NSLog("My name is \(name)");
    }

}

