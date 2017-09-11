//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Ingmar Boddington on 30/08/2017.
//  Copyright © 2017 Ingmar Boddington. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var state = [String]();
    var winningStates = [
        [true, true, true, false, false, false, false, false, false],
        [false, false, false, true, true, true, false, false, false],
        [false, false, false, false, false, false, true, true, true],
        [true, false, false, true, false, false, true, false, false],
        [false, true, false, false, true, false, false, true, false],
        [false, false, true, false, false, true, false, false, true],
        [true, false, false, false, true, false, false, false, true],
        [false, false, true, false, true, false, true, false, false]
    ];
    var turn = "X";
    
    @IBOutlet weak var outputLabel: UILabel!;
    
    @IBAction func button(_ sender: UIButton) {
        
        if (self.state[sender.tag - 1] == "") {
            
            self.state[sender.tag - 1] = self.turn;
            print("State updated to \(self.state)");
            
            if (self.didWin()) {
                self.outputLabel.text = "Grats!";
            } else {
                if (self.turn == "X") {
                    self.turn = "O";
                    self.outputLabel.text = "O's Turn!";
                } else {
                    self.turn = "X";
                    self.outputLabel.text = "X's Turn!";
                }
            }
        }
        //Need code to display win!
    }
    
    @IBAction func resetButton(_ sender: Any) {
        self.reset();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.reset();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }

    func reset() {
        self.state = ["", "", "", "", "", "", "", "", ""];
        print("State reset to \(self.state)");
    }
    
    func didWin() -> Bool {
        
        var didWin: Bool;
        
        for winningState in self.winningStates {
            didWin = true;
            
            for index, winningItem in winningState {
                if (self.state[])
            }
            
            if (didWin == true) {
                print("Win!");
                return true;
            }
        }
        
        print("Did not win");
        return false;
    }
}

