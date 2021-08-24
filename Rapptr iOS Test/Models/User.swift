//
//  LoginModel.swift
//  Rapptr iOS Test
//
//  Created by Mac on 8/23/21.
//

import Foundation

class User: Codable {
    var email: String = ""
    var password: String = ""
    
    enum CodingKeys: String, CodingKey {
        case email
        case password
    }
}
