//
//  wrrongCollectionViewController.swift
//  Li_Yuing_ISU
//
//  Created by Period One on 2018-01-22.
//  Copyright © 2018 Period One. All rights reserved.
//

import UIKit

class wrrongCollectionViewController: UIViewController, UITableViewDataSource {
    
    var wrongWord:[String]=[]
    //This array will be responsible for reciving data from the second view controller
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wrongWord.count
    }
    //This will make the number of sections depend on the number of words in the wordWord array.
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell=UITableViewCell()
        myCell.textLabel?.text=wrongWord[indexPath.row]
        return myCell
    }
   //This will make the cell show the words in the wrongWord array
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

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
