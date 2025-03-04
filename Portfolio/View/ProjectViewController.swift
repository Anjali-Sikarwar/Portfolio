//
//  ProjectViewController.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 13/02/25.
//

import UIKit

class ProjectViewController: UIViewController {

    @IBOutlet weak var projectTableView: UITableView!
    
    let projects: [Project] = [
        Project(
            projectName: "Weather App",
            projectDescription: "Displays real-time weather information for various locations.",
            technologies: ["Swift", "UIKit", "Core Location"],
            projectImageUrl: "https://cdn.britannica.com/36/147936-004-F1028543.jpg", // Replace with actual image URL
            projectShowcaseScreenshots: [UIImage(named: "loginScreen")!, UIImage(named: "loginScreen")!], // Replace with your screenshots
            gitHubLink: "https://github.com/Anjali-Sikarwar/Portfolio",
            role: "Frontend Developer"
        ),
        Project(
            projectName: "To-Do List App",
            projectDescription: "A simple to-do list app with task creation, editing, and deletion features.",
            technologies: ["Swift", "SwiftUI", "Realm"],
            projectImageUrl: "https://plus.unsplash.com/premium_photo-1677593850639-9f1e14e4524b?q=80&w=2960&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", // Replace with actual image URL
            projectShowcaseScreenshots: [UIImage(named: "loginScreen")!, UIImage(named: "loginScreen")!], // Replace with your screenshots
            gitHubLink: "https://github.com/Anjali-Sikarwar/Portfolio",
            role: "Developer"
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        projectTableView.delegate = self
        projectTableView.dataSource = self
        self.navigationItem.title = "Projects"
//        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(backButtonPressed))
        //UINib: This represents a pre-loaded object from a XIB file.
        projectTableView.register(UINib(nibName: "ProjectTableViewCell", bundle: nil), forCellReuseIdentifier: "ProjectTableViewCell")
    }
   
}
