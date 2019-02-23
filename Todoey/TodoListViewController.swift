//
//  ViewController.swift
//  Todoey
//
//  Created by Nader Nashed on 2/21/19.
//  Copyright © 2019 Nader Nashed. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Pick up Samy's computer", "Get back home", "Setup Windows 10", "Hangout with friends on Friday"]
    
    public var item : String = " "

    override func viewDidLoad() {
        super.viewDidLoad()
        

        
    }
    //TODO: Declare numberOfRowsInSection here:
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    //MARK - Tableview Datasource Methods
    
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
   
        cell.textLabel?.text = itemArray[indexPath.row]
    return cell
    
    }
    

    //TODO: TableView Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
//        print (itemArray[indexPath.row])

        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
                   tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else{
                   tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
//        let cell = tableView.cellForRow(at: indexPath)
//        cell?.accessoryType = UITableViewCell.AccessoryType.checkmark
//        if cell?.accessoryType == UITableViewCell.AccessoryType.none{
//           cell?.accessoryType = UITableViewCell.AccessoryType.checkmark
//        }else{
//            cell?.accessoryType = .none
//        }
//
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
        
        
    }
    
    



