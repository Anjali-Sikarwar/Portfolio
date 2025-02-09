//
//  SplashViewController.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 09/02/25.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackground()
    }
    
    private func setupBackground() {
        
        // Create a yellow half-circle arc
        let arcCenter = CGPoint(x: view.frame.width * 1, y: view.frame.height * 0.9) // Adjust center as needed
        
        let outerArcPath = UIBezierPath()
        outerArcPath.addArc(withCenter: arcCenter, radius: view.frame.width * 0.6, startAngle: CGFloat.pi * 2, endAngle: CGFloat.pi * 1.7, clockwise: true)
        
        let outerArcLayer = CAShapeLayer()
        outerArcLayer.path = outerArcPath.cgPath
        outerArcLayer.strokeColor = #colorLiteral(red: 0.9373498559, green: 0.5287180543, blue: 0.01246624812, alpha: 1)
        outerArcLayer.lineWidth = 50 // Adjust stroke width as needed
        view.layer.addSublayer(outerArcLayer)
        
        let innerArcPath = UIBezierPath()
        innerArcPath.addArc(withCenter: arcCenter, radius: view.frame.width * 0.4, startAngle: CGFloat.pi * 2, endAngle: CGFloat.pi * 1.6, clockwise: true)
        
        let innerArcLayer = CAShapeLayer()
        innerArcLayer.path = innerArcPath.cgPath
        innerArcLayer.strokeColor = #colorLiteral(red: 0.7856135964, green: 0.2403799891, blue: 0.2009965479, alpha: 1)
        innerArcLayer.lineWidth = 45 // Adjust stroke width as needed
        view.layer.addSublayer(innerArcLayer)

        
        

//        // Create an arc in the bottom-left corner
//        let arcPath = UIBezierPath()
//        let arcCenter = CGPoint(x: view.frame.width * 1, y: view.frame.height * 0.7) // Adjust center as needed
//        let arcRadius: CGFloat = view.frame.width * 0.3
//        arcPath.addArc(withCenter: arcCenter, radius: arcRadius, startAngle: CGFloat.pi, endAngle: CGFloat.pi * 1.6, clockwise: false)
//
//        let arcLayer = CAShapeLayer()
//        arcLayer.path = arcPath.cgPath
//        arcLayer.fillColor = UIColor.orange.cgColor
//        view.layer.addSublayer(arcLayer)
//
//        // Create a second arc with a smaller radius and different color
//        let smallerArcPath = UIBezierPath()
//        smallerArcPath.addArc(withCenter: arcCenter, radius: arcRadius * 0.8, startAngle: CGFloat.pi, endAngle: CGFloat.pi * 1.5, clockwise: true)
//        let smallerArcLayer = CAShapeLayer()
//        smallerArcLayer.path = smallerArcPath.cgPath
//        smallerArcLayer.fillColor = UIColor.red.cgColor
//        view.layer.addSublayer(smallerArcLayer)
    }

}
