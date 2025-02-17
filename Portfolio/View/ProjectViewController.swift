//
//  ProjectViewController.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 13/02/25.
//

import UIKit

class ProjectViewController: UIViewController {

    @IBOutlet weak var projectTableView: UITableView!
    
    let numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]
    
    let projects: [Project] = [
        Project(
            name: "Weather App",
            description: "Displays real-time weather information for various locations.",
            technologies: ["Swift", "UIKit", "Core Location"],
            image: "weather_app.png",
            role: "Solo Developer"
        ),
        Project(
            name: "To-Do List App",
            description: "A simple to-do list app with task creation, editing, and deletion features.",
            technologies: ["Swift", "SwiftUI", "Realm"],
            image: "todo_list_app.png",
            role: "Solo Developer"
        ),
        Project(
            name: "E-commerce App (Concept)",
            description: "A concept for an e-commerce app with product browsing, cart functionality, and user authentication.",
            technologies: ["Swift", "Firebase", "Combine"],
            image: "ecommerce_app.png", 
            role: "Solo Developer"
        ),
        Project(
            name: "Fitness Tracker",
            description: "Tracks workouts, progress, and sets fitness goals.",
            technologies: ["Swift", "HealthKit", "Core Data"],
            image: "fitness_tracker.png",
            role: "Solo Developer"
        ),
        Project(
            name: "Social Media App (Prototype)",
            description: "Prototype with user profiles, news feed, and messaging features.",
            technologies: ["Swift", "SwiftUI", "Firebase"],
            image: "social_media_app.png",
            role: "Solo Developer"
        ),
        Project(
            name: "Music Player",
            description: "Plays, pauses, and shuffles audio files.",
            technologies: ["Swift", "AVFoundation"],
            image: "music_player.png",
            role: "Solo Developer"
        ),
        Project(
            name: "Chat App (Concept)",
            description: "Concept for a real-time chat application with group chats and file sharing.",
            technologies: ["Swift", "Socket.IO", "Firebase"],
            image: "chat_app.png",
            role: "Solo Developer"
        ),
        Project(
            name: "AR Experience (Concept)",
            description: "AR experience that allows users to interact with 3D objects in their environment.",
            technologies: ["Swift", "ARKit"],
            image: "ar_experience.png",
            role: "Solo Developer"
        ),
        Project(
            name: "Personal Portfolio Website",
            description: "Showcases my skills and projects.",
            technologies: ["HTML", "CSS", "JavaScript", "SwiftUI"],
            image: "portfolio_website.png",
            role: "Solo Developer"
        ),
        Project(
            name: "Game Development (Concept)",
            description: "A simple 2D game concept using SpriteKit.",
            technologies: ["Swift", "SpriteKit"],
            image: "game_development.png",
            role: "Solo Developer"
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        projectTableView.delegate = self
        projectTableView.dataSource = self
        //UINib: This represents a pre-loaded object from a XIB file.
        projectTableView.register(UINib(nibName: "ProjectTableViewCell", bundle: nil), forCellReuseIdentifier: "ProjectTableViewCell")
        
        // Enable self-sizing cells
        projectTableView.rowHeight = UITableView.automaticDimension
        projectTableView.estimatedRowHeight = 100 // Adjust as needed
    }
   
}
