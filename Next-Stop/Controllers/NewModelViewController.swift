//
//  NewModelViewController.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 19/09/2021.
//

import UIKit

class NewModelViewController: UIViewController {
    
    // MARK: - UI Elements
    
    @IBOutlet weak var newTripButton: UIButton!
    @IBAction func newTripButtonTapped(_ sender: Any) {
        self.goToNewTripVC()
    }
    @IBOutlet weak var newPlaceButton: UIButton!
    @IBAction func newPlaceButtonTapped(_ sender: Any) {
        print("Add New Place button tapped")
    }
    @IBOutlet weak var newNoteButton: UIButton!
    @IBAction func newNoteButtonTapped(_ sender: Any) {
        print("Add New Note button tapped")
    }
    
    // MARK: - Properties
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupNavbar()
    }
    
    ///
    /// Setup the Navbar.
    ///
    private func setupNavbar() {
        self.title = "Add new ..."
    }
    
    ///
    /// Go to NewTripViewController.
    ///
    private func goToNewTripVC() {
        let newTripVC: NewTripViewController = NewTripViewController()
        self.show(newTripVC, sender: self)
    }
    
}

// MARK: - UINavigationBar Delegate

extension NewModelViewController: UINavigationBarDelegate {}
