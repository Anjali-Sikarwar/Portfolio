//
//  MenuViewController.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 10/02/25.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var menuTableView: UITableView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet var swipeGesture: UISwipeGestureRecognizer!
    
    var selectedIndex: Int?
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
        //Loding logo image
        guard let logoImage = UIImage(named: "logo_100")?.withRenderingMode(.alwaysOriginal)else {
            print("Error loading logo image")
            return
        }
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: logoImage, style: .plain, target: self, action: nil)
    }
    
    @IBAction func menuButtonClicked(_ sender: Any) {
        if menu == false && swipeGesture.direction == .right {
            showMenu()
            menu = true
        }
    }
    func showMenu() {
        self.selectedIndex = nil
        self.menuTableView.reloadData()
        self.containerView.layer.cornerRadius = 40
        self.backgroundImage.layer.cornerRadius = self.containerView.layer.cornerRadius
        let x = screen.width * 0.5 //0.8
        let originalTransform = self.containerView.transform
        let scaledTransform = originalTransform.scaledBy(x: 0.8, y: 0.8)
        let scaledAndTranslatedTransform = scaledTransform.translatedBy(x: x, y: 0)
        UIView.animate(withDuration: 0.7){
            self.containerView.transform = scaledAndTranslatedTransform
            self.navigationBarSetup(isUserInteractionEnable: false)
        }
    }
    
    func hideMenu() {
        UIView.animate(withDuration: 0.7) {
        self.containerView.transform = self.home
        self.containerView.layer.cornerRadius = 0
        self.containerView.layer.cornerRadius = self.containerView.layer.cornerRadius
            self.navigationBarSetup(isUserInteractionEnable: true)
            self.view.bringSubviewToFront(self.containerView) 
        }
        
    }
    
    @IBAction func hideMenuByTapGesture(_ sender: UITapGestureRecognizer) {
        if menu {
            hideMenu()
            menu = false
        }
    }
    
}
