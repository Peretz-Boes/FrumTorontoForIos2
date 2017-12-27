//
//  LoginViewController.swift
//  FrumToronto
//
//  Created by Alan Rabinowitz on 2017-12-27.
//  Copyright © 2017 Alan Rabinowitz. All rights reserved.
//

import UIKit
import Toast_Swift

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginUser(_ sender: Any) {
        let username = usernameTextField.text
        let password = passwordTextField.text
        if confirmPasswordTextField.text != "" {
            self.view.makeToast("You do not need to enter information in the confirm password text field")
            usernameTextField.text=""
            passwordTextField.text=""
            return
        }
        
        if username==""||password=="" {
            self.view.makeToast("The username and password text fields are required")
            return
        }
        let url = URL(fileURLWithPath: <#T##String#>)
        let session = URLSession.shared
        let request = NSMutableURLRequest(url: url)
        request.httpMethod="POST"
        let parametersToSend = "username="+username!+"&password="+password!
        request.httpBody=parametersToSend.data(using: String.Encoding.utf8)
        let task = session.dataTask(with: request as URLRequest) { (data, response, error) in
            guard let _:Data=data else{
                return
            }
        }
        
        
        
        
        
        
        
    }
    
    @IBAction func registerUser(_ sender: Any) {
        let username = usernameTextField.text;
        let password = passwordTextField.text;
        let passwordConfirmation = confirmPasswordTextField.text;
        if (username?.isEmpty)!||(password?.isEmpty)!||(passwordConfirmation?.isEmpty)! {
            displayAlertMessage(userMessage: "All fields are required")
            return
        }
        if password != passwordConfirmation {
            displayAlertMessage(userMessage: "The passwords you have entered do not match")
        }
    }
    
    func displayAlertMessage(userMessage:String){
        var alertController = UIAlertController(title: "Alert", message: userMessage, preferredStyle:.alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
        
        
    }
    
}
