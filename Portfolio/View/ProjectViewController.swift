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
            name: "Weather App",
            description: "Displays real-time weather information for various locations.",
            technologies: ["Swift", "UIKit", "Core Location"],
            imageUrl: "https://cdn.britannica.com/36/147936-004-F1028543.jpg", // Replace with actual image URL
            role: "Solo Developer"
        ),
        Project(
            name: "To-Do List App",
            description: "A simple to-do list app with task creation, editing, and deletion features.",
            technologies: ["Swift", "SwiftUI", "Realm"],
            imageUrl: "https://plus.unsplash.com/premium_photo-1677593850639-9f1e14e4524b?q=80&w=2960&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", // Replace with actual image URL
            role: "Solo Developer"
        ),
        Project(
            name: "E-commerce App (Concept)",
            description: "A concept for an e-commerce app with product browsing, cart functionality, and user authentication.",
            technologies: ["Swift", "Firebase", "Combine"],
            imageUrl: "https://example.com/ecommerce_app.png", // Replace with actual image URL
            role: "Solo Developer"
        ),
        Project(
            name: "Fitness Tracker",
            description: "Tracks workouts, progress, and sets fitness goals.",
            technologies: ["Swift", "HealthKit", "Core Data"],
            imageUrl: "https://example.com/fitness_tracker.png", // Replace with actual image URL
            role: "Team Lead"
        ),
        Project(
            name: "Social Media App (Prototype)",
            description: "Prototype with user profiles, news feed, and messaging features.",
            technologies: ["Swift", "SwiftUI", "Firebase"],
            imageUrl: "https://example.com/social_media_app.png", // Replace with actual image URL
            role: "Solo Developer"
        ),
        Project(
            name: "Music Player",
            description: "Plays, pauses, and shuffles audio files.",
            technologies: ["Swift", "AVFoundation"],
            imageUrl: "https://example.com/music_player.png", // Replace with actual image URL
            role: "Solo Developer"
        ),
        Project(
            name: "Chat App (Concept)",
            description: "Concept for a real-time chat application with group chats and file sharing.",
            technologies: ["Swift", "Socket.IO", "Firebase"],
            imageUrl: "https://example.com/chat_app.png", // Replace with actual image URL
            role: "Solo Developer"
        ),
        Project(
            name: "AR Experience (Concept)",
            description: "AR experience that allows users to interact with 3D objects in their environment.",
            technologies: ["Swift", "ARKit"],
            imageUrl: "https://unsplash.com/photos/a-white-cloud-with-a-yellow-lightning-bolt-AnEgduU-zp0", // Replace with actual image URL
            role: "Solo Developer"
        ),
        Project(
            name: "Personal Portfolio Website",
            description: "Showcases my skills and projects.",
            technologies: ["HTML", "CSS", "JavaScript", "SwiftUI"],
            imageUrl: "https://example.com/portfolio_website.png", // Replace with actual image URL
            role: "Solo Developer"
        ),
        Project(
            name: "Game Development (Concept)",
            description: "A simple 2D game concept using SpriteKit.",
            technologies: ["Swift", "SpriteKit"],
            imageUrl: "https://example.com/game_development.png", // Replace with actual image URL
            role: "Solo Developer"
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        projectTableView.delegate = self
        projectTableView.dataSource = self
        self.navigationItem.title = "Projects"
        //UINib: This represents a pre-loaded object from a XIB file.
        projectTableView.register(UINib(nibName: "ProjectTableViewCell", bundle: nil), forCellReuseIdentifier: "ProjectTableViewCell")
    }
   
}
