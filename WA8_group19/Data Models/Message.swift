//
//  Message.swift
//  WA8_group19
//
//  Created by user267597 on 11/14/24.
//

import Foundation
import FirebaseFirestore

struct MessageModel {
    let senderId: String
    let senderName: String
    let text: String
    let timestamp: Date
    
    init(dictionary: [String: Any]) {
        self.senderId = dictionary["senderId"] as? String ?? ""
        self.senderName = dictionary["senderName"] as? String ?? "Anonymous"
        self.text = dictionary["text"] as? String ?? ""
        if let timestamp = dictionary["timestamp"] as? Timestamp {
            self.timestamp = timestamp.dateValue()
        } else {
            self.timestamp = Date()
        }
    }
}

