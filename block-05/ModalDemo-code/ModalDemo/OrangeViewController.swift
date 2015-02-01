import UIKit

class OrangeViewController: UIViewController {

    @IBAction func showBlueVC(sender: AnyObject) {
        
        if let vc = self.storyboard?.instantiateViewControllerWithIdentifier("BlueViewController") as? UIViewController {
            vc.modalTransitionStyle = .CrossDissolve
            self.presentViewController(vc as UIViewController , animated: true, completion: nil)
        }
    
    }
    
}

