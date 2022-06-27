//
//  ToDoTableTableViewController.swift
//  to-do list
//
//  Created by Scholar on 6/27/22.
//

import UIKit

class ToDoTableTableViewController: UITableViewController {

    var toDos : [ToDo] = []
   
    
    override func viewDidLoad() {
      super.viewDidLoad()

      toDos = createToDos()
    }
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }//END OF VIEW
    
func createToDos() -> [ToDo] {

  let swift = ToDo()
  swift.name = "Learn Swift"
  swift.important = true

  let dog = ToDo()
  dog.name = "Walk the Dog"
  // important is set to false by default

  return [swift, dog]
}


    // MARK: - Table view data source

var toDos : [ToDo] = []

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

  let toDos = toDos[indexPath.row]

  return cell
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

  let toDo = toDos[indexPath.row]

  if toDo.important {
    cell.textLabel?.text = "❗️" + toDo.name
  } else {
    cell.textLabel?.text = toDo.name
  }

  return cell
}
