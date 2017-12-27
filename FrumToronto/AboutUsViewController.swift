//
//  AboutUsViewController.swift
//  FrumToronto
//
//  Created by Alan Rabinowitz on 2017-12-11.
//  Copyright © 2017 Alan Rabinowitz. All rights reserved.
//

import UIKit
import Toast_Swift

class AboutUsViewController: UIViewController {

    @IBOutlet weak var aboutUsWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if InternetConnectivity.isInternetServiceAvailable() {
            let url = URL(string: "http://www.frumtoronto.com/Blogger.asp?BlogCategoryID=69")!
            let request = URLRequest(url: url)
            aboutUsWebView.loadRequest(request)
            self.view.makeToast("Loading")
        } else {
            self.view.makeToast("Internet service is unavailable")
        }
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        performSegue(withIdentifier: "contactUsViewControllerSegueOne", sender: nil)
    }
    
}
