//
//  UserDataService.swift
//  SmackApp
//
//  Created by zombietux on 26/04/2019.
//  Copyright © 2019 zombietux. All rights reserved.
//

import Foundation

class UserDataService {
    
    static let instance = UserDataService()
    
    public private(set) var id = ""
    public private(set) var avatarColor = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""
    
    func setUserData(id: String, color: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarColor = color
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    
    func setAvaterName(avatarName: String) {
        self.avatarName = avatarName
    }
}
