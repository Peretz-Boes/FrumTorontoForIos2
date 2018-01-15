//
//  LoginViewController.swift
//  FrumToronto
//
//  Created by Alan Rabinowitz on 2017-12-27.
//  Copyright © 2017 Alan Rabinowitz. All rights reserved.
//

import UIKit
import Alamofire
import Toast_Swift
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    let defaultValues = UserDefaults.standard
    let appKey = "9e0b5ab1e41d44dd811825b3aa5e7c27"
    let appSecret = "b52239a6c3b5477590537ab36879dc4e"
    var refUsers:DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refUsers=Database.database().reference().child("users")
    }
    
    @IBAction func loginUser(_ sender: Any) {
        if usernameTextField.text==""||passwordTextField.text=="" {
            displayAlertMessage(userMessage: "The email field and the password field are required")
            usernameTextField.text=""
            passwordTextField.text=""
            return
        }
        if InternetConnectivity.isInternetServiceAvailable() {
            Auth.auth().signIn(withEmail: usernameTextField.text!, password: passwordTextField.text!) { (user, error) in
                if error==nil{
                    self.performSegue(withIdentifier: "segueToProtectedViewController", sender: nil)
                }else{
                    self.view.makeToast("Error logging in")
                }
            }
            
        }else{
            self.view.makeToast("Internet service is unavailable")
        }
        
    }
    
    @IBAction func registerUser(_ sender: Any) {
        let username = usernameTextField.text
        let password = passwordTextField.text

        if (username?.isEmpty)!||(password?.isEmpty)!{
            displayAlertMessage(userMessage: "The email field and the password field are required")
            usernameTextField.text=""
            passwordTextField.text=""
            return
        }
        
        if InternetConnectivity.isInternetServiceAvailable() {
            if let email=usernameTextField.text,let password=passwordTextField.text {
                Auth.auth().createUser(withEmail: email,password: password,completion:{(user:User?,error) in
                    if error != nil{
                        self.view.makeToast("Error registering")
                        print(error)
                    }
                })
                performSegue(withIdentifier: "segueToProtectedViewController", sender: nil)
            }
        }else{
            self.view.makeToast("Internet service is unavailable")
        }
        
    }
    
    func displayAlertMessage(userMessage:String){
        let alertController = UIAlertController(title: "Alert", message: userMessage, preferredStyle:.alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}
