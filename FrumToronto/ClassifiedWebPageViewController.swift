//
//  ClassifiedWebPageViewController.swift
//  FrumToronto
//
//  Created by Alan Rabinowitz on 2017-12-11.
//  Copyright © 2017 Alan Rabinowitz. All rights reserved.
//

import UIKit
import Toast_Swift

class ClassifiedWebPageViewController: UIViewController
{
@IBOutlet weak var classifiedWebPageWebView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        if InternetConnectivity.isInternetServiceAvailable() {
            let url = URL(string: "http://www.frumtoronto.com/Classified.asp")!
            let request = URLRequest(url: url)
            classifiedWebPageWebView.loadRequest(request)
            self.view.makeToast("Loading")
        }else{
            self.view.makeToast("Internet service is unavailable")
        }
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        performSegue(withIdentifier: "classifedViewControllerSegueOne", sender: nil)
    }
    
}