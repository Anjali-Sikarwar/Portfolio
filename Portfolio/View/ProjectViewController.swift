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
            projectName: "Flash-Chat App",
            projectDescription: "Flash Chat is a real-time messaging application designed to provide users with a seamless and interactive communication experience. Built with Firebase Messaging, Flash Chat ensures reliable and efficient message delivery, allowing users to connect and chat instantly.To begin using Flash Chat, new users are required to create an account through a simple and secure sign-up process. Once registered, users can easily sign in to access the application's chat functionalities.\n Key Features:\n Real-time Messaging: Experience instant message delivery and reception, enabling smooth and continuous conversations.\nFirebase Integration: Leveraging Firebase Messaging for robust and scalable chat data storage and retrieval.\n User Authentication: Secure sign-up and sign-in processes to protect user data and ensure privacy.\n Intuitive Interface: A user-friendly design that makes chatting effortless and enjoyable.",
            technologies: ["Swift"],
            projectImageUrl: "https://plus.unsplash.com/premium_photo-1683141081466-29239d3b4838?q=80&w=2954&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", // Replace with actual image URL
            projectShowcaseScreenshots: [UIImage(named: "welcomeScreen")!, UIImage(named: "loginScreen")!, UIImage(named: "chatScreen")!], // Replace with your screenshots
            gitHubLink: "https://github.com/Anjali-Sikarwar/FlashChatiOS",
            role: "Frontend Developer"
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        projectTableView.delegate = self
        projectTableView.dataSource = self
        self.navigationItem.title = "Projects"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(backButtonPressed))
        //UINib: This represents a pre-loaded object from a XIB file.
        projectTableView.register(UINib(nibName: "ProjectTableViewCell", bundle: nil), forCellReuseIdentifier: "ProjectTableViewCell")
    }
    
    @objc func backButtonPressed() {
        homePageNavigation()
    }
   
}
