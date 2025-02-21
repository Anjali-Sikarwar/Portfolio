//
//  ProjectTableViewCell.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 13/02/25.
//

import Foundation
import UIKit

class ProjectTableViewCell: UITableViewCell {
    
    @IBOutlet weak var mainContentView: UIView!
    @IBOutlet weak var projectImageView: UIImageView!
    @IBOutlet weak var projectName: UILabel!
    @IBOutlet weak var technologieName: UILabel!
    @IBOutlet weak var roleLabel: UILabel!
    @IBOutlet weak var baseView: UIView!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        mainContentView.layer.shadowColor = UIColor.gray.cgColor
//        mainContentView.layer.shadowOpacity = 0.3 // Adjust opacity (0 to 1)
//        mainContentView.layer.shadowOffset = CGSize(width: 2, height: 4) // X, Y shadow offset
//        mainContentView.layer.shadowRadius = 4 // Blur radius
//        mainContentView.layer.masksToBounds = true // Important to prevent clipping
        
//        baseView.layer.borderWidth = 0.6
        baseView.layer.borderColor = UIColor.darkGray.cgColor
        baseView.layer.cornerRadius = 8

        projectImageView.layer.cornerRadius = 8
        projectName.backgroundColor = .clear
        projectName.layer.cornerRadius = 5
        technologieName.backgroundColor = .clear
        technologieName.layer.cornerRadius = 5
        roleLabel.backgroundColor = .clear
        roleLabel.layer.cornerRadius = 5
        
        }
    
}
