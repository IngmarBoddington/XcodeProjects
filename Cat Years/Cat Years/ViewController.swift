//
//  ViewController.swift
//  Cat Years
//
//  Created by Ingmar Boddington on 01/08/2017.
//  Copyright © 2017 Ingmar Boddington. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var output: UILabel!
    
    @IBAction func submitAction(_ sender: Any) {
        let ageInCatYears = Int(textField.text!)! * 7
        output.text = String(ageInCatYears)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

