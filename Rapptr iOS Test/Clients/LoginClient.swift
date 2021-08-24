//
//  LoginClient.swift
//  Rapptr iOS Test
//
//  Created by Ethan Humphrey on 8/11/21.
//

import Foundation

/**
 * =========================================================================================
 * INSTRUCTIONS
 * =========================================================================================
 * 1) Make a request here to login.
 *
 * 2) Using the following endpoint, make a request to login
 *    URL: http://dev.rapptrlabs.com/Tests/scripts/login.php
 *
 * 3) Don't forget, the endpoint takes two parameters 'email' and 'password'
 *
 * 4) email - info@rapptrlabs.com
 *   password - Test123
 *
*/
class LoginResponse: Codable {
    
    var data: User = User.init()
    
    enum CodingKeys: String, CodingKey {
        case data
    }
    
}

class LoginClient: APIRequest<LoginResponse> {
    private var userName: String = ""
    private var password: String = ""
    
    init(userName: String, pwd: String) {
        self.userName = userName
        self.password = pwd

        super.init(route: APIRoute.login.asRoute)
    }
    
    override func getParameters() -> [String : Any] {
        return [
            "email": self.userName,
            "password": self.password
        ]
    }
}
