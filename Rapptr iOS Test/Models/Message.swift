//
//  Message.swift
//  Rapptr iOS Test
//
//  Created by Ethan Humphrey on 8/11/21.
//

import Foundation

class Message: Codable {
    var userID: String = ""
    var username: String = ""
    var avatarURL: String = ""
    var message: String = ""
    
    enum CodingKeys: String, CodingKey {
        case userID = "user_id"
        case username = "name"
        case avatarURL = "avatar_url"
        case message
    }
}
