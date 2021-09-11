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
    
    var place: Place?
    private let placeDetailDescriptionCellName: String = "PlaceDetailDescriptionTableViewCell"
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupView()
        self.setupTableView()
    }

    ///
    /// Setup the View.
    ///
    private func setupView() {
        self.title = "Place Detail VC"
    }
    
    ///
    /// Setup the TableView.
    ///
    private func setupTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.separatorStyle = .none
        
        // Register the cells.
        let descriptionCell: UINib = UINib(nibName: self.placeDetailDescriptionCellName, bundle: nil)
        self.tableView.register(descriptionCell, forCellReuseIdentifier: self.placeDetailDescriptionCellName)
    }
    
}

// MARK: - UITableView Delegate

extension PlaceDetailViewController: UITableViewDelegate {}

// MARK: - UITableView Data Source

extension PlaceDetailViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let descriptionCell = self.tableView.dequeueReusableCell(withIdentifier: self.placeDetailDescriptionCellName, for: indexPath) as! PlaceDetailDescriptionTableViewCell
        descriptionCell.place = self.place
        return descriptionCell
    }
    
}
