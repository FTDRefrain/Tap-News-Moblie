//
//  RegisterViewController.swift
//  Tap_New_iOS
//
//  Created by Yichi Zhang on 2/21/18.
//  Copyright © 2018 Yichi Zhang. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func registerPressed() {
        SVProgressHUD.show()
        
        Auth.auth().createUser(withEmail: emailField.text!, password: passwordField.text!, completion: { (user, err) in
            
            if err != nil {
                print(err!)
            }
            else {
                print("registration successful")
                
                SVProgressHUD.dismiss()
                
                self.performSegue(withIdentifier: "GetIntoNews", sender: self) //baby-sitter
            }
        })
    }
}
