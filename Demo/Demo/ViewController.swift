//
//  ViewController.swift
//  Demo
//
//  Created by Ingmar Boddington on 30/07/2017.
//  Copyright © 2017 Ingmar Boddington. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UILabel!
    
    @IBOutlet weak var actualTextField: UITextField!
    
    @IBAction func tappedButton(_ sender: Any) {
        textField.text = actualTextField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

