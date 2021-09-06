//
//  PlaceDetailViewController.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 25/08/2021.
//

import UIKit

class PlaceDetailViewController: UIViewController {
    
    // MARK: - UI Elements
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupView()
    }

    ///
    /// Setup the View.
    ///
    private func setupView() {
        self.title = "Place Detail VC"
    }
    
}
