//
//  BusinessDirectoryViewController.swift
//  FrumToronto
//
//  Created by Alan Rabinowitz on 2017-12-12.
//  Copyright © 2017 Alan Rabinowitz. All rights reserved.
//

import UIKit
import Toast_Swift

class BusinessDirectoryViewController: UIViewController {

    @IBOutlet weak var businessDirectoryWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if InternetConnectivity.isInternetServiceAvailable() {
            let url = URL(string: "http://www.frumtoronto.com/BusinessDirectory.asp")!
            let request = URLRequest(url: url)
            businessDirectoryWebView.loadRequest(request)
            self.view.makeToast("Loading")
        } else {
            self.view.makeToast("Internet service is unavailable")
        }
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        performSegue(withIdentifier: "directoryViewControllerSegueOne", sender: nil)
    }
    
}
