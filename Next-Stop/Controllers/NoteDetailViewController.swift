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
    
    var note: Note?
    private let noteDetailTitleDescriptionCellName: String = "NoteDetailTitleDescriptionTableViewCell"
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupView()
        self.setupTableView()
    }
    
    ///
    /// Setup the View.
    ///
    private func setupView() {}
    
    ///
    /// Setup the TableView.
    ///
    private func setupTableView() {
        self.tableview.delegate = self
        self.tableview.dataSource = self
        
        self.tableview.separatorStyle = .none
        
        // Register the cells.
        let titleDescriptionCell: UINib = UINib(nibName: self.noteDetailTitleDescriptionCellName, bundle: nil)
        self.tableview.register(titleDescriptionCell, forCellReuseIdentifier: self.noteDetailTitleDescriptionCellName)
        
    }
    
}

// MARK: - UITableView Delegate

extension NoteDetailViewController: UITableViewDelegate {}

// MARK: - UITableView Data Source

extension NoteDetailViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let titleDescriptionCell = self.tableview.dequeueReusableCell(withIdentifier: self.noteDetailTitleDescriptionCellName, for: indexPath) as! NoteDetailTitleDescriptionTableViewCell
        titleDescriptionCell.note = self.note
        return titleDescriptionCell
    }
    
}
