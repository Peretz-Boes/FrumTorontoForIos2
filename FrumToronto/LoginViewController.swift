//
//  LoginViewController.swift
//  FrumToronto
//
//  Created by Alan Rabinowitz on 2017-12-27.
//  Copyright © 2017 Alan Rabinowitz. All rights reserved.
//

import UIKit
import Alamofire

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
        let url = URL(fileURLWithPath: "https:www.google.co.il")
        let session = URLSession.shared
        let request = NSMutableURLRequest(url: url)
        request.httpMethod="POST"
        let parametersToSend = "username="+username!+"&password="+password!
        request.httpBody=parametersToSend.data(using: String.Encoding.utf8)
        let task = session.dataTask(with: request as URLRequest) { (data, response, error) in
            guard let _:Data=data else{
                return
            }
            
            let json:Any?
            
            do{
                json=try JSONSerialization.jsonObject(with: data!, options: [])
            }catch{
                return
            }
            
            guard let server_response=json as? NSDictionary else{
                return
            }
            
            if let data_block=server_response["data"] as?NSDictionary{
                if let session_data=data_block["session"]as? String{
                    let preferences = UserDefaults.standard
                    preferences.set(session_data, forKey: "session")
                    DispatchQueue.main.async {
                        self.performSegue(withIdentifier: "segueToProtectedViewController",sender: nil)
                    }
                }
            }
            
        }
        task.resume()
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
