//
//  ViewController.swift
//  Egg Timer
//
//  Created by Ingmar Boddington on 16/08/2017.
//  Copyright © 2017 Ingmar Boddington. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer();
    
    @IBOutlet weak var timerText: UILabel!
    
    @IBAction func playButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.tickerFunction), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        self.pauseFunction();
    }
    
    @IBAction func resetButton(_ sender: Any) {
        timerText.text = "210";
    }
    
    @IBAction func minusButton(_ sender: Any) {
        if (Int(timerText.text!)! > 10) {
            timerText.text = String(Int(timerText.text!)! - 10);
        }
    }
    
    @IBAction func plusButton(_ sender: Any) {
        timerText.text = String(Int(timerText.text!)! + 10);
    }
    
    func tickerFunction() {
        if (timerText.text == "0") {
            self.pauseFunction();
        } else {
            timerText.text = String(Int(timerText.text!)! - 1);
        }
    }
    
    func pauseFunction() {
        timer.invalidate();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }


}

