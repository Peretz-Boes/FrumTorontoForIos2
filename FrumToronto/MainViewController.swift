//
//  ViewController.swift
//  FrumToronto
//
//  Created by Alan Rabinowitz on 2017-12-06.
//  Copyright © 2017 Alan Rabinowitz. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showBecomeAMemberWebpage(_ sender: Any) {
        let url = NSURL(string: "http://www.frumtoronto.com/MemberApplicationForm.asp?Task=NewMember")
        UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func showAskTheRabbiWebpage(_ sender: Any) {
        let url = NSURL(string: "http://www.frumtoronto.com/Blogger.asp?BlogCategoryID=98")
        UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func showTorontoWeather(_ sender: Any) {
        let url = NSURL(string: "https://www.theweathernetwork.com/ca/weather/ontario/toronto")
        UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func showWeatherNetworkWebsite(_ sender: Any) {
        let url = NSURL(string: "https://www.theweathernetwork.com/ca?intcmp=twn_topnav_home")
        UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func showRegisterYourBuisnessWebpage(_ sender: Any) {
        let url = NSURL(string: "http://www.frumtoronto.com/BusinessApplicationForm.asp?Task=NewBusiness")
        UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func showPersonsDirectory(_ sender: Any) {
        let url = NSURL(string:"http://mobileapps.x10host.com/database.php")
        UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
    }
}
