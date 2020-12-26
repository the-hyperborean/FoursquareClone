//
//  ViewController.swift
//  FoursquareClone
//
//  Created by Jack Brennan on 26/12/20.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        let parseObject = PFObject(className: "Fruits")
        parseObject["name"] = "Apples"
        parseObject["calories"] = 100
        parseObject.saveInBackground { (success, error) in
            if error != nil {
                print(error?.localizedDescription)
            } else {
                print("uploaded")
            }
        }
    }
    
    


}

