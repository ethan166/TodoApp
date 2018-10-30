import UIKit

class TasksTableViewController: UITableViewController {
    
    var tasks: [String] = ["Eat", "Sleep", "Play"]
    var selected: String?
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    @IBAction func addTaskButtonPressed(_ sender: Any) {
        
        tasks.append("New task")
        tableView.reloadData()
    }
    
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let task = tasks[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tasksCell") as! TaskCell
        cell.textLabel?.text = task
        cell.task = task
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selected = tasks[indexPath.row]
        performSegue(withIdentifier: "taskTransition", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DisplayTaskViewController {
            destination.task = selected
        }
    }
    
    
}
