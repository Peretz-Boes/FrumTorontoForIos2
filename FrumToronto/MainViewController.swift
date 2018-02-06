//
//  ViewController.swift
//  FrumToronto
//
//  Created by Alan Rabinowitz on 2017-12-06.
//  Copyright © 2017 Alan Rabinowitz. All rights reserved.
//

import UIKit
import Toast_Swift

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
        let url = NSURL(string:"https://frumtoronto-a2f1d.firebaseio.com/users")
        UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func showCalendarLogin(_ sender: Any) {
        let url = NSURL(string: "http://www.frumtoronto.com/diary_EditE.asp?mode=Add")
        self.view.makeToast("When the page loads click on calendar to log in to the calendar")
        UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func searchAskTheRabbiDatabase(_ sender: Any) {
        let url = NSURL(string: "http://www.frumnewyork.com/search.html")
        UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func showPersonsDirectorySearchWebpage(_ sender: Any) {
        let url = NSURL(string: "http://www.frumnewyork.com/person_directory_search.html")
        UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
    }
}
