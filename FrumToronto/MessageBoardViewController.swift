//
//  MessageBoardViewController.swift
//  FrumToronto
//
//  Created by Alan Rabinowitz on 2018-01-09.
//  Copyright © 2018 Alan Rabinowitz. All rights reserved.
//

import UIKit
import Toast_Swift

class MessageBoardViewController: UIViewController {

    @IBOutlet weak var messageBoardWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if InternetConnectivity.isInternetServiceAvailable() {
            let url = URL(string: "http://www.frumtoronto.com/Blogger.asp?BlogCategoryID=44")!
            let request = URLRequest(url: url)
            messageBoardWebView.loadRequest(request)
            self.view.makeToast("Loading")
        }else{
            self.view.makeToast("Internet service is unavailable")
        }

    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        performSegue(withIdentifier: "messageBoardViewControllerSegue", sender: nil)
    }
    
}
