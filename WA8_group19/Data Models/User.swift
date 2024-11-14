//
//  User.swift
//  WA8_group19
//
//  Created by user267597 on 11/14/24.
//

import Foundation

struct UserModel {
    let name: String
    let email: String
    let uid: String
    
    init(dictionary: [String: Any]) {
        self.name = dictionary["name"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
    }
}
