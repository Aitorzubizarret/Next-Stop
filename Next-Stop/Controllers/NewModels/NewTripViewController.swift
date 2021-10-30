//
//  NewTripViewController.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 02/10/2021.
//

import UIKit

class NewTripViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupNavbar()
    }
    
    ///
    /// Setup the Navbar.
    ///
    private func setupNavbar() {
        self.title = "New Trip"
    }
    
}
