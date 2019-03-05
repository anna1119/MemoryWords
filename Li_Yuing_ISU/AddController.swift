//
//  AddController.swift
//  Li_Yuing_ISU
//
//  Created by Period One on 2018-01-19.
//  Copyright © 2018 Period One. All rights reserved.
//

import UIKit

class AddController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addButton(_ sender: Any) {
        if (textField.text != nil) && textField.text != "" {
            todoList?.append(textField.text!)
            textField.text=""
            textField.placeholder = "Add more ?"
        }
        
    }
    //When the users put something in the text field and then press the addButton, they can add the words into the notebook and then the text field will show the sentence "add more?"
   
}
