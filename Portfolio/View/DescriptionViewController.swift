//
//  DescriptionViewController.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 23/02/25.
//

import UIKit
import SafariServices

class DescriptionViewController: UIViewController {
    
    
    @IBOutlet weak var github_label: UILabel!
    @IBOutlet weak var projectNameLabel: UILabel!
    @IBOutlet weak var projectNameandLogoView: UIView!
    @IBOutlet weak var githubButton: UIButton!
    @IBOutlet weak var projectImage: UIImageView!
    @IBOutlet weak var projectDescription: UITextView!
    @IBOutlet weak var gitLogoImage: UIImageView!
    @IBOutlet weak var screenshotCollectionView: UICollectionView!
    
    var project: Project?
    
    var projectScreenshotArray: [UIImage] = [
        UIImage(named: "welcomeScreen")!,
        UIImage(named: "loginScreen")!,
        UIImage(named: "chatScreen")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Project: \(project)")
        screenshotCollectionView.dataSource = self
        screenshotCollectionView.delegate = self
        projectImage.layer.cornerRadius = 8
        projectNameandLogoView.layer.cornerRadius = 8
        github_label.layer.cornerRadius = 7
        github_label.layer.masksToBounds = true

        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(backButtonPressed))
        screenshotCollectionView.register(UINib(nibName: "ShowcaseScreenshotCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ShowcaseScreenshotCollectionViewCell")
        populateData()
        githubButton.addTarget(self, action: #selector(openGitHub), for: .touchUpInside)
    }
    
    @objc func backButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
    
    func populateData() {
        guard let project = project else { return }
        
        projectNameLabel.text = project.projectName
        projectDescription.text = project.projectDescription
        
        if let imageUrlString = project.projectImageUrl, let imageUrl = URL(string: imageUrlString) {
            projectImage.kf.setImage(with: imageUrl, placeholder: UIImage(named: "placeholder"))
        } else {
            projectImage.image = UIImage(named: "placeholder")
        }
    }
    
    @objc func openGitHub() {
        guard let project = project, let url = URL(string: project.gitHubLink) else { return }
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true, completion: nil)
    }
    
}
