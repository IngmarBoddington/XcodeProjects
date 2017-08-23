//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Ingmar Boddington on 02/08/2017.
//  Copyright © 2017 Ingmar Boddington. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number = 0

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var output: UILabel!
    
    @IBAction func button(_ sender: Any) {
        let guessNumber = Int(textField.text!)!
        if self.number == guessNumber {
            output.text = "Correct! The number was \(number)"
            self.setNumber()
        } else {
            output.text = "Wrong! The number was \(number)"
            self.setNumber()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNumber()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func setNumber() {
        self.number = Int(arc4random_uniform(6))
    }
}

