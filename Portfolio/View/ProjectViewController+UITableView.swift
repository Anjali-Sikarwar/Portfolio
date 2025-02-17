//
//  ProjectViewController+UITableView.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 13/02/25.
//

import Foundation
import UIKit
import Kingfisher


extension ProjectViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return projects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProjectTableViewCell", for: indexPath) as! ProjectTableViewCell
        cell.backgroundColor = .cyan
        if let imageUrlString = projects[indexPath.row].image, let imageUrl = URL(string: imageUrlString) {
            cell.imageView?.kf.setImage(with: imageUrl, placeholder: UIImage(named: "placeholder"))
        } else {
            cell.projectImageView.image = UIImage(named: "placeholder")
        }
        
        cell.projectName.text = projects[indexPath.row].name
        cell.technologieName.text = projects[indexPath.row].technologies.joined(separator: ", ")
        cell.roleLabel.text = projects[indexPath.row].role
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Hello")
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
}
