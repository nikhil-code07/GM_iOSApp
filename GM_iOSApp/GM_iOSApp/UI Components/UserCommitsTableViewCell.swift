//
//  UserCommitsTableViewCell.swift
//  GM_iOSApp
//
//  Created by Nikhil Murade on 7/28/19.
//  Copyright © 2019 Nikhil Murade. All rights reserved.
//

import UIKit

class UserCommitsTableViewCell: UITableViewCell {
    @IBOutlet weak var labelUserName: UILabel!
    @IBOutlet weak var labelCommitHash: UILabel!
    @IBOutlet weak var labelCommitMessage: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
