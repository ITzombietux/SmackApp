//
//  AddChannelViewController.swift
//  SmackApp
//
//  Created by zombietux on 27/04/2019.
//  Copyright © 2019 zombietux. All rights reserved.
//

import UIKit

class AddChannelViewController: UIViewController {
    
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var channelDesc: UITextField!
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
       
    }
    
    @IBAction func createChannelPressed(_ sender: Any) {
    }
    

    @IBAction func closePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    func setUpView() {
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelViewController.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
        
        nameText.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSAttributedStringKey.foregroundColor : smackPurplePlaceholder])
        channelDesc.attributedPlaceholder = NSAttributedString(string: "description", attributes: [NSAttributedStringKey.foregroundColor : smackPurplePlaceholder])
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    
}
