//
//  ViewController.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 05/02/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profile_view: UIView!
    @IBOutlet weak var profile_photo: UIImageView!
    @IBOutlet weak var gitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.profile_photo.layer.cornerRadius = 105
        let blur = UIVisualEffectView(effect: UIBlurEffect(style: .regular))
        blur.frame = gitButton.bounds
        blur.isUserInteractionEnabled = true
        gitButton.insertSubview(blur, at: 0)
        blur.layer.cornerRadius = 10
        
        let maskLayer = CAShapeLayer()
            maskLayer.path = UIBezierPath(roundedRect: blur.bounds, cornerRadius: 10).cgPath
            blur.layer.mask = maskLayer
        
        self.gitButton.layer.borderWidth = 1
        self.gitButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.gitButton.layer.cornerRadius = 10
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let maskLayer = CAShapeLayer()
        maskLayer.path = UIBezierPath(roundedRect: gitButton.bounds, cornerRadius: 10).cgPath
        gitButton.subviews.first?.layer.mask = maskLayer
    }


}

