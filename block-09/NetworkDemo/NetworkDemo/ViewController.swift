import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tempReadingLabel: UILabel!
    
    @IBOutlet weak var networkActivityIndicatorView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        self.networkActivityIndicatorView.hidden = true
        self.tempReadingLabel.hidden = true
    }
    
    override func viewDidAppear(animated: Bool) {
        self.updateWeather()
    }
    
    func updateWeather() {
        let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
        let url = NSURL(string: "http://mikezornek.com/gdi/weather.json")
        let request = NSURLRequest(URL: url!)
        let dataTask = session.dataTaskWithRequest(request) { (data, response, error) in
            if data != nil {
                self.parseResponseData(data)
            } else {
                println("No data was retuend from the request.")
            }
        }
        
        // since the network request can be really fast lest delay the resume call
        let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(3 * Double(NSEC_PER_SEC)))
        dispatch_after(delayTime, dispatch_get_main_queue()) {
            dataTask.resume()
        }
        
        // kick off the network request
        //dataTask.resume()
        self.networkActivityIndicatorView.hidden = false
    }
    
    func parseResponseData(data: NSData) {
        var jsonError: NSError?
        if let jsonObject = NSJSONSerialization.JSONObjectWithData(data, options: nil, error: &jsonError) as? [[NSObject:AnyObject]] {
            
            for cityInfoDictionary in jsonObject {
                if let cityName = cityInfoDictionary["city"] as? String {
                    if cityName == "philadelphia" {
                        let reading = cityInfoDictionary["temp"] as Double
                        
                        // anytime you want to update the ui from one of this async callbacks make sure to put the ui updates on the main thread
                        dispatch_async(dispatch_get_main_queue(), {
                            self.tempReadingLabel.text = "\(reading)"
                            self.tempReadingLabel.hidden = false
                            self.networkActivityIndicatorView.hidden = true
                        })
                    
                    }
                }
            }
            
        } else {
            if let e = jsonError {
                println("Error parsing JSON: \(e)")
            }
        }
    }
}

