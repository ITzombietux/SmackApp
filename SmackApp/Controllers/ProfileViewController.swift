//
//  ProfileViewController.swift
//  SmackApp
//
//  Created by zombietux on 26/04/2019.
//  Copyright © 2019 zombietux. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var bgView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        
    }

    @IBAction func closePressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func logoutPressed(_ sender: UIButton) {
        UserDataService.instance.logoutUser()
        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CAHNCE, object: nil)
        
        dismiss(animated: true, completion: nil)
    }
    
    func setUpView() {
        userName.text = UserDataService.instance.name
        userEmail.text = UserDataService.instance.email
        profileImage.image = UIImage(named: UserDataService.instance.avatarName)
        profileImage.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(ProfileViewController.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
}
