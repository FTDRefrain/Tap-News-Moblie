//
//  RegisterViewController.swift
//  TapTapNews
//
//  Created by WanliMa on 2018/3/30.
//  Copyright © 2018年 WanliMa. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func RegisterPressed() {
        SVProgressHUD.show()
        
        Auth.auth().createUser(withEmail: email.text!, password: password.text!, completion: {
            (use, err) in
            if err != nil {
                print(err)
            }
            else {
                print("registation successful")
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "GetIntoNews", sender: self)
            }
        })
    }
    
}
