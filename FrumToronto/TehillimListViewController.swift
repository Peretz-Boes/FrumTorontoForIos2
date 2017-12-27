//
//  TehillimListViewController.swift
//  FrumToronto
//
//  Created by Alan Rabinowitz on 2017-12-11.
//  Copyright © 2017 Alan Rabinowitz. All rights reserved.
//

import UIKit
import Toast_Swift

class TehillimListViewController: UIViewController {

    @IBOutlet weak var tehillimListWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if InternetConnectivity.isInternetServiceAvailable() {
            let url = URL(string: "http://www.frumtoronto.com/Main.asp?Menu_Tag=daveninglist&BlogCategoryID=73")!
            let request = URLRequest(url: url)
            tehillimListWebView.loadRequest(request)
            self.view.makeToast("Loading")
        } else {
            self.view.makeToast("Internet service is unavailable")
        }
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        performSegue(withIdentifier: "shulsAndTefillosViewControllerSegueSix", sender: nil)
    }
    
}
