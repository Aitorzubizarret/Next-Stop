//
//  NewModelViewController.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 19/09/2021.
//

import UIKit

class NewModelViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupNavbar()
    }
    
    ///
    /// Setup the Navbar.
    ///
    private func setupNavbar() {
        // Navbar.
        let height: CGFloat = 75
        let navbar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: height))
        navbar.backgroundColor = UIColor.white
        navbar.delegate = self
        
        // Nav item.
        let navbarTitleItem = UINavigationItem()
        navbarTitleItem.title = "Add new ..."
        
        navbar.items = [navbarTitleItem]
        
        self.view.addSubview(navbar)
    }
    
}

// MARK: - UINavigationBar Delegate

extension NewModelViewController: UINavigationBarDelegate {}
