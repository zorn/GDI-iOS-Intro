import UIKit

class MoveOutViewController: UIViewController {
    
    @IBOutlet weak var mainTextFieldHorizontalConstraint: NSLayoutConstraint!
    override func viewWillAppear(animated: Bool) {
        prepareAnimation(self)
    }
    
    @IBAction func prepareAnimation(sender: AnyObject) {
        self.mainTextFieldHorizontalConstraint.constant += self.view.frame.width;
        self.view.layoutIfNeeded()
    }
    
    @IBAction func runAnimation(sender: AnyObject) {
        UIView.animateWithDuration(1.0, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
            self.mainTextFieldHorizontalConstraint.constant = 16
            self.view.layoutIfNeeded()
        }) { (finished) -> Void in
            println("animation done")

        }
    }
    
}