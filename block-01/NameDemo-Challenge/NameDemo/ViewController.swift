import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var movieTextField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBAction func sayMyNameButtonAction(sender: AnyObject) {
        let name = self.nameTextField.text
        let movie = self.movieTextField.text
        let message = "\(name)'s favorite movie is \(movie)"
        self.messageLabel.text = message
    }

}

