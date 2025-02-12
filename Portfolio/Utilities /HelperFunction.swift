//
//  HelperFunction.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 13/02/25.
//

import Foundation
import UIKit

extension UIViewController {
    func navigationBarSetup(isUserInteractionEnable: Bool) {
        self.navigationController?.navigationBar.layer.opacity = 1
        self.navigationController?.navigationBar.isUserInteractionEnabled = isUserInteractionEnable
    }
}
