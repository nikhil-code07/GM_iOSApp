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
    
    let errorMessage = "something went wrong while getting the data"
    func request(urlString:String, completion: @escaping (RequestResult<[CommitDetails]>) -> Void )  {
        
        guard let request = RequestManager.init(urlString: urlString, requestMethod: .GET) else{
            return
        }
        
        URLSession.shared.dataTask(with: request as URLRequest, completionHandler: { (data,response,error) in
            
            guard error == nil else{
                return completion(.FAILURE(error?.localizedDescription ?? self.errorMessage))
            }
            
            guard let data = data else{
                return completion(.FAILURE(error?.localizedDescription ?? self.errorMessage))
            }
            
            guard let parsedData = self.parseResponse(data: data) else{
                return completion(.FAILURE(error?.localizedDescription ?? self.errorMessage))
            }
            completion(.SUCCESS(parsedData))
        }).resume()
        
    }
    
    func parseResponse(data:Data) -> [CommitDetails]?{
        do{
        let jsonResponse = try JSONDecoder().decode([CommitDetails].self, from: data)
            return jsonResponse
        }catch{
            print(error.localizedDescription)
        }
        return nil
    }
}
