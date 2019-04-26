//
//  CreateAccountViewController.swift
//  SmackApp
//
//  Created by zombietux on 25/04/2019.
//  Copyright © 2019 zombietux. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var userImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailText.text , emailText.text != "" else { return }
        guard let password = passwordText.text, passwordText.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            
            if success {
                print("registered user!")
            }
        }
    }
    
    @IBAction func pichAvatarPressed(_ sender: Any) {
    }
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }

}
