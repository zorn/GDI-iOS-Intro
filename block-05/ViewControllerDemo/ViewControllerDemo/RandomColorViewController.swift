import UIKit

class RandomColorViewController: UIViewController {
    
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("viewDidLoad")
        self.setupBackgroundColor()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        println("viewWillAppear")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        println("viewDidAppear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        println("viewWillDisappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        println("viewDidDisappear")
    }
    
//    func setupBackgroundColor() {
//        let possibleColors = [UIColor.redColor(), UIColor.greenColor(), UIColor.orangeColor(), UIColor.blueColor(), UIColor.yellowColor()];
//        let randomIndex = arc4random_uniform(UInt32(possibleColors.count))
//        let randomUIColor = possibleColors[Int(randomIndex)]
//        self.view.backgroundColor = randomUIColor
//    }
    
    // MARK: - Private
    
    func setupBackgroundColor() {
        self.view.backgroundColor = getRandomUIColor()
    }

    func getRandomUIColor() -> UIColor {
        let red = CGFloat(Double(arc4random() % 256) / 256.0)
        let green = CGFloat(Double(arc4random() % 256) / 256.0)
        let blue = CGFloat(Double(arc4random() % 256) / 256.0)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }

}

