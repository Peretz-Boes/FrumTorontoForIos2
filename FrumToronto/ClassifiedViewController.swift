//
//  ClassifiedViewController.swift
//  FrumToronto
//
//  Created by Alan Rabinowitz on 2017-12-07.
//  Copyright © 2017 Alan Rabinowitz. All rights reserved.
//

import UIKit

class ClassifiedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showClassified(_ sender: Any) {
        let url = NSURL(string: "http://www.frumtoronto.com/Classified.asp")
        UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func showWeeklySpecials(_ sender: Any) {
        let url = NSURL(string: "http://www.frumtoronto.com/WeeklySpecials.asp")
        UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
    }
}
