//
//  LoginViewController.swift
//  Instagram
//
//  Created by Khoa Doan on 3/3/22.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    
    
    @IBOutlet weak var usernameField: UITextField!
    
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func onSignIn(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!
        PFUser.logInWithUsername(inBackground: username, password: password)
        {   (user,error)in
            if user != nil{
                self.performSegue(withIdentifier: "loginSeque", sender: nil)
            }else{
                print("Error: \(String(describing: error?.localizedDescription))")
            }
            
        }
    }
    
    
    @IBAction func onSignUp(_ sender: Any) {
        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        user.signUpInBackground {(success, error) in
            if (success){
                self.performSegue(withIdentifier: "loginSeque", sender: nil)
            } else {
                print("Error: \(String(describing: error?.localizedDescription))")
            }
    
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

   
        // Do any additional setup after loading the view.
    }
    

    
}
