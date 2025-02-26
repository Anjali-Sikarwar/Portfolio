//
//  DescriptionViewController.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 23/02/25.
//

import UIKit

class DescriptionViewController: UIViewController {

    @IBOutlet weak var projectNameandLogoView: UIView!
    @IBOutlet weak var projectImage: UIImageView!
    @IBOutlet weak var gitLogoImage: UIImageView!
    
    @IBOutlet weak var screenshotCollectionView: UICollectionView!
    
    
    var projectScreenshotArray: [UIImage] = [
        UIImage(named: "welcomeScreen")!,
        UIImage(named: "loginScreen")!,
        UIImage(named: "chatScreen")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenshotCollectionView.dataSource = self
        screenshotCollectionView.delegate = self
        projectImage.layer.cornerRadius = 8
        projectNameandLogoView.layer.cornerRadius = 8
//        projectTableView.register(UINib(nibName: "ProjectTableViewCell", bundle: nil), forCellReuseIdentifier: "ProjectTableViewCell")
        screenshotCollectionView.register(UINib(nibName: "projectScreenshotCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "projectScreenshotCollectionViewCell")
    }
    
}
