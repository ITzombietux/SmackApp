//
//  RoundButton.swift
//  SmackApp
//
//  Created by zombietux on 25/04/2019.
//  Copyright © 2019 zombietux. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
    
    @IBInspectable var cornerRadius: Double = 0.0 {
        didSet {
            layer.cornerRadius = CGFloat(cornerRadius)
            layer.masksToBounds = true
        }
    }
}

@IBDesignable
class RoundImage: UIImageView {
  
    override func awakeFromNib() {
        setUpView()
    }
    
    func setUpView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setUpView()
    }
}
