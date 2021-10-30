//
//  NewNoteViewController.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 10/10/2021.
//

import UIKit

class NewNoteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupNavbar()
    }
    
    ///
    /// Setup the Navbar.
    ///
    private func setupNavbar() {
        self.title = "New Note"
    }
    
}
