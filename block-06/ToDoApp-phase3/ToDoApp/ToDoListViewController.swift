import UIKit

class ToDoListViewController : UIViewController, UITableViewDataSource, NewToDoItemViewControllerDelegate {
    
    var items: [ToDoItem] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.prepareDataStore()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "newToDoItemSegue") {
            let navigationController = segue.destinationViewController as UINavigationController
            let vc = navigationController.topViewController as NewToDoItemViewController
            vc.delegate = self
        }
    }
    
    //MARK: - Private
    
    func prepareDataStore() {
        for i in 0...3 {
            let newItem = ToDoItem(name: "To Do Item \(i)", isDone: false)
            items.append(newItem)
        }
    }

    //MARK: - UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let item = self.items[indexPath.row]
        let cell = tableView.dequeueReusableCellWithIdentifier("Basic", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = item.name
        return cell
    }
    
    //MARK: - NewToDoItemViewControllerDelegate
    
    func newToDoItemViewControllerDidFinishWithToDoItem(newToDoItem: ToDoItem?) {
        if let toDoItem = newToDoItem {
            self.items.append(toDoItem)
            self.tableView.reloadData()
            
            let index = self.items.count - 1
            let indexPath = NSIndexPath(forRow: index, inSection: 0)
            self.tableView.scrollToRowAtIndexPath(indexPath, atScrollPosition:UITableViewScrollPosition.Middle, animated: true)
        }
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}

