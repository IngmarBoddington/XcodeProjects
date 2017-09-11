//
//  ViewController.swift
//  Animation
//
//  Created by Ingmar Boddington on 30/08/2017.
//  Copyright © 2017 Ingmar Boddington. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentImage: Int = -1;
    var started: Bool = false;
    var timer: Timer = Timer();
    
    @IBOutlet weak var buttonText: UIButton!
    @IBOutlet weak var image: UIImageView!
    
    @IBAction func theButton(_ sender: Any) {
        if (self.started == false) {
            self.timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.tickerFunction), userInfo: nil, repeats: true)
            self.buttonText.setTitle("Stop!", for: .normal);
            self.started = true;
        } else {
            self.timer.invalidate();
            self.buttonText.setTitle("Start!", for: .normal);
            self.started = false;
        }
    }
    
    @IBAction func fadeIn(_ sender: Any) {
        self.image.alpha = 0;
        UIView.animate(withDuration: 1, animations: {
            self.image.alpha = 1;
        })
    }
    
    @IBAction func slideIn(_ sender: Any) {
        self.image.center = CGPoint(x: image.center.x - 500, y: image.center.y);
        UIView.animate(withDuration: 2, animations: {
            self.image.center = CGPoint(x: self.image.center.x + 500, y: self.image.center.y)
        })
    }
    
    @IBAction func grow(_ sender: Any) {
        self.image.frame = CGRect(x: 0, y: 0, width: 0, height: 0);
        UIView.animate(withDuration: 5, animations: {
            self.image.frame = CGRect(x: 0, y: 0, width: 200, height: 200);
        })
    }
    
    func tickerFunction() {
        
        currentImage += 1;
        if (self.currentImage == 15) {
            self.currentImage = 0;
        }
        let stringForImage = String(format: "%02d", self.currentImage)
        
        self.image.image = UIImage(named: "frame_\(stringForImage)_delay-0.1s.gif");
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }


}

