//
//  CommitDetailsViewController.swift
//  GM_iOSApp
//
//  Created by Nikhil Murade on 7/28/19.
//  Copyright © 2019 Nikhil Murade. All rights reserved.
//

import UIKit

class CommitDetailsViewController: UIViewController {
    
    var committerName:String?
    var commithash:String?
    var commitMessage:String?
    
    @IBOutlet weak var labelCommiterName: UILabel!
    @IBOutlet weak var labelCommitHash: UILabel!
    @IBOutlet weak var textViewCommitMessage: UITextView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Commit Details"
        labelCommiterName.text = committerName
        labelCommitHash.text = commithash
        textViewCommitMessage.text = commitMessage
        // Do any additional setup after loading the view.
    }
    

}
