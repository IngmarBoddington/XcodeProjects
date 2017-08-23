//
//  ViewController.swift
//  My Number
//
//  Created by Ingmar Boddington on 23/08/2017.
//  Copyright © 2017 Ingmar Boddington. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func buttonClick(_ sender: Any) {
        if let _ = Int(textField.text!) {
            let number = textField.text!;
            print("Saving \(number)")
            UserDefaults.standard.set(number, forKey: "number");
            self.updateView();
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        updateView();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    internal func updateView() {
        let numberObject = UserDefaults.standard.object(forKey: "number");

        if let number = numberObject as? String {
            print("Updating to \(number)");
            label.text = number;
        }
    }
}

