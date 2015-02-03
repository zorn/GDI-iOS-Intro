import UIKit

class ToDoListViewController : UIViewController, UITableViewDataSource {
    
    var items: [ToDoItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.prepareDataStore()
    }
    
    //MARK: - Private
    
    func prepareDataStore() {
        for i in 0...100 {
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

}

