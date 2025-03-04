//
//  Project.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 13/02/25.
//

import Foundation
import UIKit

struct Project {
    let projectName: String
    let projectDescription: String
    let technologies: [String]
    let projectImageUrl: String? // Optional - Store image URL or local file path
    let projectShowcaseScreenshots: [UIImage]
    let gitHubLink: String
    let role: String? // Optional
}
