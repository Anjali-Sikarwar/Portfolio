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
        return projectScreenshotArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "projectScreenshotCollectionViewCell", for: indexPath) as! projectScreenshotCollectionViewCell
        cell.screenshotImageView.layer.borderWidth = 1
        cell.screenshotImageView.layer.borderColor = UIColor.black.cgColor
        cell.screenshotImageView.image = projectScreenshotArray[indexPath.row]
        return cell
    }
    
    
    
    
}
