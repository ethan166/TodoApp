//
//  DisplayTaskViewController.swift
//  TodoApp
//
//  Created by Ethan Chen on 10/30/18.
//  Copyright © 2018 kyaw tun. All rights reserved.
//

import UIKit

class DisplayTaskViewController: UIViewController {
    
   
    @IBOutlet weak var taskEdit: UITextField!
    
    var task: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        taskEdit.text = task
    }
    
    @IBAction func DoneButtonPressed(_ sender: Any) {
    }
}
