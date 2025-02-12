//
//  MenuViewController+UITableView.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 11/02/25.
//

import Foundation
import UIKit

extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell", for: indexPath) as! MenuTableViewCell
        cell.backgroundColor = .clear
        cell.descriptionLabel.text = options[indexPath.row].title
        print("check: \(indexPath.row == self.selectedIndex ? UIColor.darkYellow : UIColor.white)")
        cell.descriptionLabel.textColor =  indexPath.row == self.selectedIndex ? UIColor.darkYellow : UIColor.white
        return cell
    }
    
    //Animation when user clicks the menu options
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        guard let currentCell = tableView.cellForRow(at: indexPath) as? MenuTableViewCell else {
            return
        }
        self.selectedIndex = indexPath.row
        
        if selectedIndex == 0 {
            currentCell.descriptionLabel.textColor = .darkYellow
            self.hideMenu()
            self.menu = false
        }else {
            tableView.reloadData()
            self.navigationBarSetup(isUserInteractionEnable: true)
            self.parent?.performSegue(withIdentifier: options[indexPath.row].segue, sender: self)
        }
        
//        let currentCell = (tableView.cellForRow(at: indexPath) ?? UITableViewCell()) as UITableViewCell
//        currentCell.alpha = 0.5
//        UIView.animate(withDuration: 1) {
//            currentCell.alpha = 1
//        }
        
    }
    
}

