//
//  ProtectedViewController.swift
//  FrumToronto
//
//  Created by Alan Rabinowitz on 2017-12-27.
//  Copyright © 2017 Alan Rabinowitz. All rights reserved.
//

import UIKit
import Alamofire
import Firebase

class ProtectedViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var addressTextField:UITextField!
    let userId = Auth.auth().currentUser?.uid
    var databaseReference:DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        databaseReference=Database.database().reference().child("users/\(userId)")
        print("User id\(userId)")
    }
    
    @IBAction func saveRegistrationData(_ sender: Any) {
        let username = usernameTextField.text
        let address = addressTextField.text
        let phoneNumber = phoneNumberTextField.text
        databaseReference.updateChildValues(["username":username,"address":address,"phoneNumber":phoneNumber])
        displayAlertMessage(userMessage: "The changes were made successfully")
    }
    
    @IBAction func logOut(_ sender: Any) {
        if Auth.auth().currentUser != nil {
            do{
                try Auth.auth().signOut()
                performSegue(withIdentifier: "segueToLoginViewController", sender: nil)
            }catch let error as NSError{
                print("Error\(error)")
            }
        }
    }
    func displayAlertMessage(userMessage:String){
        let alertController = UIAlertController(title: "Alert", message: userMessage, preferredStyle:.alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
