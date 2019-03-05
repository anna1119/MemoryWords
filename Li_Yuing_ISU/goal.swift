//
//  goal.swift
//  Li_Yuing_ISU
//
//  Created by Home on 2018/1/23.
//  Copyright © 2018年 Period One. All rights reserved.
//

import UIKit

class goal: UIViewController {
   
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var button4: UIButton!
    
    
    @IBOutlet weak var button5: UIButton!
    
    @IBOutlet weak var button6: UIButton!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    
    @IBOutlet weak var result: UIButton!
    
    @IBOutlet weak var mainMenu: UIButton!
    
    @IBOutlet weak var previousGoal: UILabel!
    
    @IBOutlet weak var motto: UILabel!
    var goal=0
    var categrary=0
    var array1:[String]=[]
    var array2:[String]=[]
    var array3:[String]=[]
    //array1, array2 and array3 will be responsible for receiving the words user has learned and comparing the number of words to the goal
    var myString:String = ""
    //myString will be responsible for passing the motto to the main menu
    override func viewDidLoad() {
        super.viewDidLoad()
        let goal1: Int?=UserDefaults.standard.object(forKey: "goalNumber") as? Int
        if let goal2=goal1 {
            goal=goal2
        }
        previousGoal.text="Your Previous Goal: " + "\(goal)"
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let goal1: Int?=UserDefaults.standard.object(forKey: "goalNumber") as? Int
        if let goal2=goal1 {
            goal=goal2
        }
        previousGoal.text="Your Previous Goal: " + "\(goal)"
            }

    //This function will pass the motto and user's goal number to the main menu
    
    
    @IBAction func button1(_ sender: Any) {
    goal=1000
    UserDefaults.standard.set(goal, forKey: "goalNumber")
        label1.text="Your Goal:" + String(goal)
    }
    //if user press button1, the goal number will become 1000 and the label will show it
    
    @IBAction func button2(_ sender: Any) {
        goal=1500
        UserDefaults.standard.set(goal, forKey: "goalNumber")
        label1.text="Your Goal: " + String(goal)
    }
    //if user press button2, the goal number will become 1500 and the label will show it
    @IBAction func button3(_ sender: Any) {
        goal=2000
        UserDefaults.standard.set(goal, forKey: "goalNumber")
        label1.text="Your Goal: " + String(goal)
    }
    //if user press button3, the goal number will become 2000 and the label will show it
    
    
    @IBAction func button4(_ sender: Any) {
        label2.text="Your Categrary: IELTS"
        button4.tag=1
        button5.isEnabled=false
        button6.isEnabled=false
    }
    //if the user press button4, it means that the user chooses IELTS categrary and this will compare the number of words in IELES categrary the user has learned to his/her goal. And the label will show the categrary he/she chooses. Also the other two categraries will be not able to press.
    
    @IBAction func button5(_ sender: Any) {
        label2.text="Your Categrary: CET-4"
        button5.tag=1
        button4.isEnabled=false
        button6.isEnabled=false
    }
    //if the user press button5, it means that the user chooses CET-4 categrary and this will compare the number of words in CET-4 categrary the user has learned to his/her goal. And the label will show the categrary he/she chooses. Also the other two categraries will be not able to press.
    
    @IBAction func button6(_ sender: Any) {
        label2.text="Your Categrary: CET-6"
        button6.tag=1
        button4.isEnabled=false
        button5.isEnabled=false
    }
    //if the user press button6, it means that the user chooses CET-6 categrary and this will compare the number of words in IELES categrary the user has learned to his/her goal. And the label will show the categrary he/she chooses. Also the other two categraries will be not able to press.
    
    @IBAction func mainMenu(_ sender: Any) {
        performSegue(withIdentifier: "back", sender: self)
    }
    //This will make mainMenu to perform segue
    
    @IBAction func result(_ sender: Any) {
       
        if button4.tag==1 {
          if array1.count < goal && button4.tag == 1{
           
            label3.text="\(array1.count) vs \(goal)"
                button4.tag=0
                button5.isEnabled=true
                button6.isEnabled=true
            myString="to persist in was to be successful"
            motto.text=myString
            } else {
                myString="Good Job!"
                motto.text=myString
                button4.tag=0
                button5.isEnabled=true
                button6.isEnabled=true
            }
        }
        if button5.tag==1 {
        if array2.count < goal && button5.tag == 1{
            myString="to persist in was to be successful"
            motto.text=myString
            label3.text="\(array2.count) vs \(goal)"
            button5.tag=0
            button4.isEnabled=true
            button6.isEnabled=true
        } else {
            myString="Good Job!"
            motto.text=myString
            button5.tag=0
            button4.isEnabled=true
            button6.isEnabled=true
        }
        }
        if button6.tag==1 {
            
       
        if array3.count < goal && button6.tag == 1{
            myString="to persist in was to be successful"
            motto.text=myString
            label3.text="\(array3.count) vs \(goal)"
            button6.tag=0
            button4.isEnabled=true
            button5.isEnabled=true
        } else {
            myString="Good Job!"
            motto.text=myString
            button6.tag=0
            button5.isEnabled=true
            button4.isEnabled=true
        }
      
        }
      
    }
    //This function will compare the particular categrary and goal number to the number of words that the user has learned.
    
    
    
    
    
    
    
    
    
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
