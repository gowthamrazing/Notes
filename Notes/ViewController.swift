//
//  ViewController.swift
//  Notes
//
//  Created by Gowtham Kalaiselvan on 2/10/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var dayTextfield: UITextField!
    
    @IBOutlet weak var savedNameLabel: UILabel!
    @IBOutlet weak var savedDayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedDay = UserDefaults.standard.object(forKey: "birthday")
        
        //Casting - as? vs as!
        //
        
        if let newName = storedName as? String {
            savedNameLabel.text = "Name\(newName)"
        }
    
        if let newBirthday = storedDay as? String {
            savedDayLabel.text = "Birthday \(newBirthday)"
        }
        
    }
    @IBAction func deleteClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedDate = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            
            savedNameLabel.text = "Name:-"
        }
        
        if (storedDate as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            savedDayLabel.text = "Birthday:-"
        }
        
        
    }
    
    @IBAction func saveDate(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(dayTextfield.text!, forKey: "birthday")
        
        
        savedNameLabel.text = "Name:- \(nameTextField.text!)"
        savedDayLabel.text = "Birthday:- \(dayTextfield.text!)"
         
    }
    
}

