//
//  NetworkManager.swift
//  GM_iOSApp
//
//  Created by Nikhil Murade on 7/28/19.
//  Copyright © 2019 Nikhil Murade. All rights reserved.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    
    func request(urlString:String, completion: @escaping (Int) -> Void )  {
        
        guard let request = RequestManager.init(urlString: urlString, requestMethod: .GET) else{
            return
        }
        
        URLSession.shared.dataTask(with: request as URLRequest, completionHandler: { (data,response,error) in
            
            
        })
        
    }
}
