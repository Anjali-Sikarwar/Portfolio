//
//  MenuViewController+UITableView.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 11/02/25.
//

import Foundation
import UIKit

extension MenuViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell", for: indexPath) as! MenuTableViewCell
        cell.backgroundColor = .clear
        cell.descriptionLabel.textColor = .white
        cell.descriptionLabel.text = options[indexPath.row].title
        cell.descriptionLabel.textColor = UIColor.white
        return cell
    }
    
    //Animation when user clicks the menu options
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let currentCell = tableView.cellForRow(at: indexPath) as? MenuTableViewCell else {
            return
        }
        currentCell.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
        currentCell.descriptionLabel.textColor = .darkYellow
//        currentCell.descriptionLabel.layer.borderWidth = 1
//        currentCell.descriptionLabel.layer.borderColor = UIColor.white.cgColor
//        currentCell.descriptionLabel.layer.cornerRadius = 5
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 7) {
            currentCell.transform = CGAffineTransform.identity
//            currentCell.descriptionLabel.textColor = .white
        }
    
//        let currentCell = (tableView.cellForRow(at: indexPath) ?? UITableViewCell()) as UITableViewCell
//        currentCell.alpha = 0.5
//        UIView.animate(withDuration: 1) {
//            currentCell.alpha = 1
//        }
//        self.parent?.performSegue(withIdentifier: options[indexPath.row].segue, sender: self)
    }
    
//    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//    }
    
}

