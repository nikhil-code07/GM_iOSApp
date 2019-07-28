//
//  RequestManager.swift
//  GM_iOSApp
//
//  Created by Nikhil Murade on 7/28/19.
//  Copyright © 2019 Nikhil Murade. All rights reserved.
//

import Foundation

enum RequestMethod:String{
    case GET = "GET"
    case POST = "POST"
}

class RequestManager:NSMutableURLRequest{
    
    convenience init?(urlString:String, requestMethod:RequestMethod) {
        
        guard let url = URL(string: urlString) else {
            return nil
        }
        self.init(url:url)
        self.httpMethod = requestMethod.rawValue
        self.addValue("application/json", forHTTPHeaderField: "Content-Type")
    }
}
