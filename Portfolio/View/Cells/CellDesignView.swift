//
//  CellDesignView.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 21/02/25.
//

import Foundation
import UIKit

@IBDesignable class CellDesignView: UIView {
    @IBInspectable var cornerRadius: CGFloat = 0
    @IBInspectable var shadowColor: UIColor? = UIColor.white
    @IBInspectable var shadowOffSetWidth: Int = 0
    @IBInspectable var shadowOffSetHeight: Int = 0
    
    @IBInspectable var shadowOpacity: Float = 1
    
    override func layoutSubviews() {
        layer.cornerRadius = 1
        layer.shadowColor = shadowColor?.cgColor
        layer.shadowOffset = CGSize(width: shadowOffSetWidth, height: shadowOffSetHeight)
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        layer.shadowPath = shadowPath.cgPath
        layer.shadowOpacity = shadowOpacity
    }
    
}
