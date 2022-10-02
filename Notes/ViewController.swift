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
    }

    @IBAction func saveDate(_ sender: Any) {
    }
    
}

