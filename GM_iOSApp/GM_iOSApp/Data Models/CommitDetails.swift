//
//  CommitDetails.swift
//  GM_iOSApp
//
//  Created by Nikhil Murade on 7/28/19.
//  Copyright © 2019 Nikhil Murade. All rights reserved.
//

import Foundation

struct CommitDetails: Codable {
    let sha: String?
    let commit: Commit?
    
    /*
    var commiterName:String
    var commitHash:String
    var commitMessage:String
    
    init(commiterName:String,commitHash:String,commitMessage:String) {
        self.commiterName = commiterName
        self.commitHash = commitHash
        self.commitMessage = commitMessage
    }
 */
}
