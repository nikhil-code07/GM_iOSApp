//
//  UserCommitsViewController.swift
//  GM_iOSApp
//
//  Created by Nikhil Murade on 7/28/19.
//  Copyright © 2019 Nikhil Murade. All rights reserved.
//

import UIKit

class UserCommitsViewController: UIViewController {
    @IBOutlet weak var tableViewUserCommits: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

//MARK: UITableViewDelegate & UITableViewDataSource
extension UserCommitsViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let userCommitsCell = tableView.dequeueReusableCell(withIdentifier: "UserCommitsCell", for: indexPath) as! UserCommitsTableViewCell
        return userCommitsCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
