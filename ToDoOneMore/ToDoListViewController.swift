//
//  ViewController.swift
//  ToDoOneMore
//
//  Created by Israel Bergenstein on 04/10/2019.
//  Copyright © 2019 Israel Bergenstein. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    var itemArray = ["Machine Learning", "AI", "Swift"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(itemArray[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
        
        // the following lines of code need to be fixed with a terniary operator
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
    }

    @IBAction func barButtonPressed(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "New Item?", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add A new Item", style: .default) { (action) in
            //how we handle the action
    
        }
        // everything was fine but forgot to add action to alert and forgot to present the alert
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
      
        
    }

}



