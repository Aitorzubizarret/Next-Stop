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
        self.goToNewPlaceVC()
    }
    @IBOutlet weak var newNoteButton: UIButton!
    @IBAction func newNoteButtonTapped(_ sender: Any) {
        self.goToNewNoteVC()
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
    
    ///
    /// Go to NewPlaceViewController.
    ///
    private func goToNewPlaceVC() {
        let newPlaceVC: NewPlaceViewController = NewPlaceViewController()
        self.show(newPlaceVC, sender: self)
    }
    
    ///
    /// Go to NewNoteViewController.
    ///
    private func goToNewNoteVC() {
        let newNoteVC: NewNoteViewController = NewNoteViewController()
        self.show(newNoteVC, sender: self)
    }
    
}

// MARK: - UINavigationBar Delegate

extension NewModelViewController: UINavigationBarDelegate {}
