//
//  ChatClient.swift
//  Rapptr iOS Test
//
//  Created by Ethan Humphrey on 8/11/21.
//

import Foundation

/**
 * =========================================================================================
 * INSTRUCTIONS
 * =========================================================================================
 * 1) Make a request to fetch chat data used in this app.
 *
 * 2) Using the following endpoint, make a request to fetch data
 *    URL: http://dev.rapptrlabs.com/Tests/scripts/chat_log.php
 *
 */
class ChatResponse: Codable {
    
    var data: [Message] = []
    
    enum CodingKeys: String, CodingKey {
        case data
    }
    
}

class ChatClient: APIRequest<ChatResponse> {
        
    init() {
        super.init(route: APIRoute.message.asRoute)
    }
}
