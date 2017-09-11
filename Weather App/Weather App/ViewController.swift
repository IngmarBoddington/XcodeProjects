//
//  ViewController.swift
//  Weather App
//
//  Created by Ingmar Boddington on 30/08/2017.
//  Copyright © 2017 Ingmar Boddington. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    var finalText: String = "";
    
    @IBAction func submitButton(_ sender: Any) {
        
        self.outputLabel.text = "Loading...";
        
        var filteredString = "";
        var validString = false;
        
        let searchString = self.cityField.text;
        print("User entered = \(searchString ?? "No Value")");
        
        if let noSpaceString = String(searchString!.replacingOccurrences(of: " ", with: "-")) {
            let searchString = NSString(string: noSpaceString);
            print("Without Spaces =  \(searchString)");
            
            if (searchString != "") {
                filteredString = searchString.lowercased
                print("Lowercased = \(filteredString)");
                validString = true;
            }
        }

        if (validString == true) {
            if let url = URL(string: "http://www.weather-forecast.com/locations/\(filteredString)/forecasts/latest") {
                
                let request = URLRequest(url: url);
                
                let task = URLSession.shared.dataTask(with: request) {
                    data, response, error in
                    
                    if error != nil {
                        print(error!);
                    } else {
                        
                        if let unwrappedData = data {
                            
                            if let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue) {
                                
                                let splitText = dataString.components(separatedBy: "Weather Forecast Summary:</b><span class=\"read-more-small\"><span class=\"read-more-content\"> <span class=\"phrase\">");
                                
                                let splitTextAgain = splitText[1].components(separatedBy: "</span>");
                                
                                print(splitTextAgain);
                                
                                self.finalText = splitTextAgain[0].replacingOccurrences(of: "&deg;", with: "°")
                                print("Output = \(self.finalText)");
                                DispatchQueue.global().async(execute: {
                                    self.outputLabel.text = self.finalText;
                                })
                            }
                        }
                    }
                }
                
                task.resume();
            }
        }
        


    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }


}

