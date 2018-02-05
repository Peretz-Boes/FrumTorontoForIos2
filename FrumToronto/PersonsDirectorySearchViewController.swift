//
//  PersonsDirectorySearchViewController.swift
//  FrumToronto
//
//  Created by Alan Rabinowitz on 2018-02-05.
//  Copyright © 2018 Alan Rabinowitz. All rights reserved.
//

import UIKit
import Alamofire
import Toast_Swift

class PersonsDirectorySearchViewController: UIViewController {

    @IBOutlet weak var userIdTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        performSegue(withIdentifier: "personsDirectorySearchViewControllerSegue", sender: nil)
    }
    
    @IBAction func makeRequest(_ sender: Any) {
        let url = NSURL(string: "http://www.frumnewyork.com/person_directory_search.html")
        UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
    }
}
