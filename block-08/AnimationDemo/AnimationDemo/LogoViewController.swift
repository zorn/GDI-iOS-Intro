import UIKit

class LogoViewController: UIViewController {
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
        prepareLogo()
    }
    
    override func viewDidAppear(animated: Bool) {
        animateLogo()
    }
    
    func prepareLogo() {
        self.logoImageView.alpha = 0.0
    }
    
    func animateLogo() {
        UIView.animateWithDuration(2.0, animations: {
            self.logoImageView.alpha = 1.0
        })
    }
    
}