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
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var arrayCommits = Array<CommitDetails>()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewUserCommits.tableFooterView = UIView()
        activityIndicator.startAnimating()
        getCommitHistory()
        
    }

    func getCommitHistory(){
        NetworkManager.shared.request(urlString: commitsListURL, completion: {
            result in
            switch result{
            case .SUCCESS(let results) :
                self.arrayCommits = results
                DispatchQueue.main.async {
                    self.tableViewUserCommits.reloadData()
                    self.activityIndicator.stopAnimating()
                }
                break
                
            case .FAILURE(let failure):
                print(failure)
                break
                
            }
        })
    }
    
}

//MARK: UITableViewDelegate & UITableViewDataSource
extension UserCommitsViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let userCommitsCell = tableView.dequeueReusableCell(withIdentifier: "UserCommitsCell", for: indexPath) as! UserCommitsTableViewCell
        userCommitsCell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        userCommitsCell.labelUserName.text = "\(arrayCommits[indexPath.row].commit?.author?.name ?? "no name")"
        userCommitsCell.labelCommitHash.text = "Commit: \(arrayCommits[indexPath.row].sha ?? "no hash")"
        userCommitsCell.labelCommitMessage.text = "Commit Massage: \(arrayCommits[indexPath.row].commit?.message ?? "no message")"
        return userCommitsCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCommits.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let commitDetailViewContoller = storyboard.instantiateViewController(withIdentifier: "CommitDetailViewContoller") as! CommitDetailsViewController
        commitDetailViewContoller.committerName = "\(arrayCommits[indexPath.row].commit?.author?.name ?? "no name")"
        commitDetailViewContoller.commitMessage = "Commit Massage: \(arrayCommits[indexPath.row].commit?.message ?? "no message")"
        commitDetailViewContoller.commithash = "Commit: \(arrayCommits[indexPath.row].sha ?? "no hash")"
        navigationController?.pushViewController(commitDetailViewContoller,animated: true)
        
    }
    
}
