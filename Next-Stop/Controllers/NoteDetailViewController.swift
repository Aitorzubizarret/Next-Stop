//
//  NoteDetailViewController.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 25/08/2021.
//

import UIKit

class NoteDetailViewController: UIViewController {
    
    // MARK: - UI Elements
    
    @IBOutlet weak var tableview: UITableView!
    
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
        self.title = "Note Detail VC"
    }
    
}
