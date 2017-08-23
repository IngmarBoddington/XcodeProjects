//
//  SecondViewController.swift
//  To Do
//
//  Created by Ingmar Boddington on 23/08/2017.
//  Copyright © 2017 Ingmar Boddington. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    @IBAction func addButton(_ sender: Any) {
        
        let enteredText = textField.text;
        
        if (enteredText != nil) && (enteredText != "") {
            
            print("Entered \(textField.text!)");
            let savedArray = UserDefaults.standard.object(forKey: "list");

            if var array = savedArray as? Array<Any> {
                print("Updating existing array");
                array.append(enteredText!);
                print("Saving array");
                UserDefaults.standard.set(array, forKey: "list");
            } else {
                print("Creating new array");
                let array = [enteredText];
                print("Saving array");
                UserDefaults.standard.set(array, forKey: "list");
            }
        }
        
        textField.text = "";
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true;
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true);
    }
}

