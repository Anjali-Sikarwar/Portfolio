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
        self.navigationController?.navigationBar.layer.opacity = isUserInteractionEnable ? 1 : 0
        self.navigationController?.navigationBar.isUserInteractionEnabled = isUserInteractionEnable
    }
    func homePageNavigation() {
        guard let navigationController = navigationController else { return }
        for viewController in navigationController.viewControllers {
           if let homeViewController = viewController as? HomeViewController {
               homeViewController.hideMenu()
               homeViewController.menu = false
               navigationController.popToViewController(homeViewController, animated: true)
               return
           }
        }
    }
}
