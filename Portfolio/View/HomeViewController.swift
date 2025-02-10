//
//  SplashViewController.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 09/02/25.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackground()
    }
    
    private func setupBackground() {
        //Loding logo image
        guard let logoImage = UIImage(named: "logo_100")?.withRenderingMode(.alwaysOriginal)else {
            print("Error loading logo image")
            return
        }
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: logoImage, style: .plain, target: self, action: nil)
        
        //Outer Arc
        let arcCenter = CGPoint(x: view.frame.width * 1, y: view.frame.height * 0.9) // Adjust center as needed
        let outerArcPath = UIBezierPath()
        outerArcPath.addArc(withCenter: arcCenter, radius: view.frame.width * 0.6, startAngle: CGFloat.pi * 2, endAngle: CGFloat.pi * 1.7, clockwise: true)
        let outerArcLayer = CAShapeLayer()
        outerArcLayer.path = outerArcPath.cgPath
        outerArcLayer.strokeColor = UIColor.darkYellow.cgColor
        outerArcLayer.lineWidth = 40 // Adjust stroke width as needed
        view.layer.addSublayer(outerArcLayer)
        
        //Inner Arc
        let innerArcPath = UIBezierPath()
        innerArcPath.addArc(withCenter: arcCenter, radius: view.frame.width * 0.4, startAngle: CGFloat.pi * 2, endAngle: CGFloat.pi * 1.6, clockwise: true)
        let innerArcLayer = CAShapeLayer()
        innerArcLayer.path = innerArcPath.cgPath
        innerArcLayer.strokeColor = UIColor.darkRed.cgColor
        innerArcLayer.lineWidth = 38 // Adjust stroke width as needed
        view.layer.addSublayer(innerArcLayer)
    }

}
