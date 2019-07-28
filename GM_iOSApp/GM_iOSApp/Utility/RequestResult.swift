//
//  RequestResult.swift
//  GM_iOSApp
//
//  Created by Nikhil Murade on 7/28/19.
//  Copyright © 2019 Nikhil Murade. All rights reserved.
//

import Foundation

enum RequestResult<A>{
    case SUCCESS(A)
    case FAILURE(String)
}
