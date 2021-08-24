//
//  Route.swift
//  Rapptr iOS Test
//
//  Created by Mac on 8/23/21.
//

import Foundation

enum APIRoute {
    case login
    case message
}

extension APIRoute {
    
    private var baseUrl: String {
        return Constant.BASE_PATH
    }
    
    private var apiEndPoint: String {
        return "\(baseUrl)/\(urlPath)"
    }
    
    private var urlPath: String {
        switch self {
        case .login:
            return "login.php"
        case .message:
            return "chat_log.php"
        }
    }
    
    var url: URL {
        return URL(string: apiEndPoint)!
    }
    
    var asRoute: Route {
        switch self {
        case .login:
            return Route.postRoute(path: apiEndPoint)
        case .message:
            return Route.getRoute(path: apiEndPoint)
        }
    }
    
}
