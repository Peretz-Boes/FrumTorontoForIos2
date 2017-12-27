//
//  ProtectedViewController.swift
//  FrumToronto
//
//  Created by Alan Rabinowitz on 2017-12-27.
//  Copyright © 2017 Alan Rabinowitz. All rights reserved.
//

import UIKit

class ProtectedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.performSegue(withIdentifier: "segueToLoginViewController", sender: self)
    }
    
}
