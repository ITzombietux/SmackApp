//
//  ChannelViewController.swift
//  SmackApp
//
//  Created by zombietux on 25/04/2019.
//  Copyright © 2019 zombietux. All rights reserved.
//

import UIKit

class ChannelViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60
    }
}
