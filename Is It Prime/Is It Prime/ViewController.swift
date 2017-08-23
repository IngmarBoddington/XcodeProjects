//
//  ViewController.swift
//  Is It Prime
//
//  Created by Ingmar Boddington on 16/08/2017.
//  Copyright © 2017 Ingmar Boddington. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberField: UITextField!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBAction func numberButton(_ sender: Any) {
        
        //if divisible by any number other than 1 and itself
        
        let enteredNumber = Int(numberField.text!)
        
        if (enteredNumber == nil) || !(enteredNumber! > 0) {
            messageLabel.text = "Please enter a positive whole number"
        } else {
        
            var i = 1;
            var factors = 0;
        
            while (i <= enteredNumber! && factors < 3) {
            
                print ("\(enteredNumber!) / \(factors)")
            
                if (enteredNumber! % i == 0) {
                    print ("Hit")
                    factors = factors + 1;
                }
            
                i = i + 1;
            }
        
            print ("\(factors)")
        
            if (factors == 2 || enteredNumber! == 1) {
                messageLabel.text = "\(enteredNumber!) is a Prime Number!"
            } else {
                messageLabel.text = "\(enteredNumber!) is NOT a Prime Number!"
            }
        
        }
        
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

