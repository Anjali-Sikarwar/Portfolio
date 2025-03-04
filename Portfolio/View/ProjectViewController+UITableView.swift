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
        
        let project = projects[indexPath.row]

        cell.projectName.text = project.projectName
        cell.technologieName.text = project.technologies.joined(separator: ", ")
        cell.roleLabel.text = project.role

        if let imageUrlString = project.projectImageUrl, let imageUrl = URL(string: imageUrlString) {
            cell.projectImageView.kf.setImage(with: imageUrl, placeholder: UIImage(named: "placeholder"))
        } else {
            cell.projectImageView.image = UIImage(named: "placeholder")
        }
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Hello")
        tableView.deselectRow(at: indexPath, animated: true)
        let selectedProject = projects[indexPath.row]
        performSegue(withIdentifier: "descriptionSegue", sender: selectedProject)//descriptionSegue
//        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "descriptionSegue", let descriptionVC = segue.destination as? DescriptionViewController, let selectedProject = sender as? Project {
            descriptionVC.project = selectedProject
        }
    }
    
}
