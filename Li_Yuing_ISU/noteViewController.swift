//
//  noteViewController.swift
//  Li_Yuing_ISU
//
//  Created by Period One on 2018-01-19.
//  Copyright © 2018 Period One. All rights reserved.
//

import UIKit

class noteViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate=self
        tableView.dataSource=self
    }
    //This function will make the tableView be connected to the delegate and dataSource
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    //This function will make the tableView reload data
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let todo=todoList {
            return todo.count
        } else {
            return 0
        }
    }
    //if there is no word in the todoList, the number of sections will be 0, otherwise it will depend on the number of words in the todoList.
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell(style: .default, reuseIdentifier: nil)
        if let todo=todoList {
            cell.textLabel?.text=todo[indexPath.row]
        }
        return cell
    }
    //This will make the cells show the words in the todoList
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            todoList?.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    //This function enables users to delete the words she/he recorded before, and then the table will reload the data
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
