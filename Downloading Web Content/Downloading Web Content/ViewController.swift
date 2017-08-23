//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Ingmar Boddington on 23/08/2017.
//  Copyright © 2017 Ingmar Boddington. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        //let url = URL(string: "http://www.stackoverflow.com")!;
        //webview.loadRequest(URLRequest(url: url));
        
        //webview.loadHTMLString("<h1>Hello World!</h1>", baseURL: nil);
        
        if let url = URL(string: "http://www.stackoverflow.com") {
            
            let request = URLRequest(url: url);
            
            let task = URLSession.shared.dataTask(with: request) {
                data, response, error in
                
                if error != nil {
                    print(error!);
                } else {
                    if let unwrappedData = data {
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue);
                        print(dataString!);
                        //DispatchQueue.main.sync(execute)
                    }
                }
            }
            
            task.resume();
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

