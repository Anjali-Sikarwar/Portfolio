//
//  screenshotCollectionView.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 24/02/25.
//

import Foundation
import UIKit

extension DescriptionViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return project?.projectShowcaseScreenshots.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShowcaseScreenshotCollectionViewCell", for: indexPath) as! ShowcaseScreenshotCollectionViewCell
        cell.projectScreenshotImageView.layer.borderWidth = 1
        cell.projectScreenshotImageView.layer.borderColor = UIColor.black.cgColor
        cell.projectScreenshotImageView.layer.cornerRadius = 10
//        cell.layer.cornerRadius = 10
        
        cell.projectScreenshotImageView.image = projectScreenshotArray[indexPath.row]
//        if let screenshot = project?.projectShowcaseScreenshots[indexPath.item] {
//            cell.projectScreenshotImageView.image = screenshot
//        }
        return cell
    }
    
    
    
    
}
