//
//  MenuViewController.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 10/02/25.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var menuTableView: UITableView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet var swipeGesture: UISwipeGestureRecognizer!
    
    var menu = false
    let screen = UIScreen.main.bounds
    var home = CGAffineTransform()
    
    var options: [Option] = [
        Option(title: "Home", segue: "HomeSegue"),
        Option(title: "About", segue: "AboutSegue")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        menuTableView.delegate = self
        menuTableView.dataSource = self
        menuTableView.backgroundColor = .clear
        home = containerView.transform
    }
    
    func showMenu() {
        self.containerView.layer.cornerRadius = 40
        self.backgroundImage.layer.cornerRadius =
        self.containerView.layer.cornerRadius
        let x = screen.width * 0.5 //0.8
        let originalTransform = self.containerView.transform
        let scaledTransform = originalTransform.scaledBy(x: 0.8, y: 0.8)
        let scaledAndTranslatedTransform = scaledTransform.translatedBy(x: x, y: 0)
        UIView.animate(withDuration: 0.7){
            self.containerView.transform = scaledAndTranslatedTransform
        }
    }
    
    func hideMenu() {
        UIView.animate(withDuration: 0.7) {
        self.containerView.transform = self.home
        self.containerView.layer.cornerRadius = 0
        self.containerView.layer.cornerRadius = self.containerView.layer.cornerRadius
        }
    }

    @IBAction func showMenuBySwipeGesture(_ sender: UISwipeGestureRecognizer) {
        if menu == false && swipeGesture.direction == .right { 
            showMenu()
            menu = true
        }
    }
    
    @IBAction func hideMenuByTapGesture(_ sender: UITapGestureRecognizer) {
        
        if menu {
            hideMenu()
            menu = false
        }
    }
    
    
}
