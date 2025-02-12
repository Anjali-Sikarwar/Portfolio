//
//  ViewController.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 05/02/25.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var profile_view: UIView!
    @IBOutlet weak var profile_photo: UIImageView!
    @IBOutlet weak var description_design_view: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = false
        navigationItem.title = "About"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(backButtonPressed))
        setupDescriptionView()
    }
        
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        updateProfilePhotoCornerRadius()
        updateDescriptionViewMask()
    }
    
    @objc func backButtonPressed() {
        guard let navigationController = navigationController else { return }
               // Pop all view controllers on the stack until you reach the HomeViewController
        for viewController in navigationController.viewControllers {
           if let homeViewController = viewController as? HomeViewController {
               homeViewController.hideMenu() // Call hideMenu() on the HomeViewController instance
               homeViewController.menu = false
//                       navigationController.popViewController(animated: true)
               navigationController.popToViewController(homeViewController, animated: true)
               return
           }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

//        // Animate the description_design_view with a spring animation
//        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
//            self.description_design_view.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
//        }) { _ in
//            UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
//                self.description_design_view.transform = .identity // Reset to original size
//            })
//        }
    }
    
    private func setupDescriptionView() {
//        let blur = createBlurEffectView(for: description_design_view.bounds)
//        blur.backgroundColor = #colorLiteral(red: 0.03262747824, green: 0.07964541763, blue: 0.1254312098, alpha: 1)
//        description_design_view.insertSubview(blur, at: 0)
        
        description_design_view.layer.borderWidth = 1
        description_design_view.layer.borderColor = UIColor.white.cgColor
        description_design_view.layer.cornerRadius = 10
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = description_design_view.bounds
        gradientLayer.colors = [#colorLiteral(red: 0.09628791362, green: 0.1424746215, blue: 0.1884399354, alpha: 1), UIColor.init(red: 0.1921539009, green: 0.2325905263, blue: 0.2703259587, alpha: 1).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5) // Top-Left
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5) // Bottom-Right
        description_design_view.layer.insertSublayer(gradientLayer, at: 0)
        
        // Animate the description_design_view with a spring animation
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
            self.description_design_view.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
        }) { _ in
            UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
                self.description_design_view.transform = .identity // Reset to original size
            })
        }

    }
    
    private func createBlurEffectView(for bounds: CGRect) -> UIVisualEffectView {
        let blur = UIVisualEffectView(effect: UIBlurEffect(style: .regular))
        blur.frame = bounds
        blur.isUserInteractionEnabled = true
        blur.layer.cornerRadius = 10
        blur.clipsToBounds = true // Ensure the corners are clipped
        return blur
    }
    
    private func updateProfilePhotoCornerRadius() {
        profile_photo.layer.cornerRadius = profile_photo.frame.size.width / 2
        profile_photo.clipsToBounds = true
       
        // Create a yellow border with a slight offset
        let yellowBorder = CALayer()
        yellowBorder.frame = profile_photo.bounds
        yellowBorder.cornerRadius = profile_photo.frame.size.width / 2
        yellowBorder.borderWidth = 4.0 // Adjust border width as needed
        yellowBorder.borderColor = UIColor.darkYellow.cgColor
        yellowBorder.masksToBounds = true

        // Add the yellow border layer to the profile_photo's layer
        profile_photo.layer.addSublayer(yellowBorder)
    }
    
    private func updateDescriptionViewMask() {
        if let blurView = description_design_view.subviews.first as? UIVisualEffectView {
            let maskLayer = CAShapeLayer()
            maskLayer.path = UIBezierPath(roundedRect: description_design_view.bounds, cornerRadius: 10).cgPath
            blurView.layer.mask = maskLayer
        }
    }
}

