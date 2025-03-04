//
//  ShowcaseScreenshotCollectionViewCell.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 24/02/25.
//

import UIKit

class ShowcaseScreenshotCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var projectScreenshotImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        projectScreenshotImageView.layer.borderWidth = 1
        projectScreenshotImageView.layer.borderColor = UIColor.black.cgColor
        projectScreenshotImageView.layer.cornerRadius = 10
    }
}
