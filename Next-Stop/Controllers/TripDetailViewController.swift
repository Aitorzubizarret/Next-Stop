//
//  TripDetailViewController.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 25/08/2021.
//

import UIKit

class TripDetailViewController: UIViewController {
    
    // MARK: - UI Elements
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var topViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tableview: UITableView!
    
    // MARK: - Properties
    
    var trip: Trip?
    private let tripDetailDescriptionTitleCellName: String = "TripDetailDescriptionTableViewCell"
    private let topViewMinHeight: CGFloat = 100 // Minimun TopView height.
    
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
        // Navigation bar.
        self.navigationController?.customDesignTransparent()
        
        guard let receivedTrip: Trip = self.trip else { return }
        
        self.titleLabel.text = receivedTrip.name
    }
    
    ///
    /// Setup the TableView.
    ///
    private func setupTableView() {
        self.tableview.delegate = self
        self.tableview.dataSource = self
        
        self.tableview.separatorStyle = .none
        self.tableview.contentInset = UIEdgeInsets(top: self.topViewHeightConstraint.constant, left: 0, bottom: 0, right: 0)
        
        // Register the cells.
        let descriptionCell: UINib = UINib(nibName: self.tripDetailDescriptionTitleCellName, bundle: nil)
        self.tableview.register(descriptionCell, forCellReuseIdentifier: self.tripDetailDescriptionTitleCellName)
    }
    
}

// MARK: - UITableView Delegate

extension TripDetailViewController: UITableViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // Check the scrollview content offset to control the minimun TopView height.
        if -scrollView.contentOffset.y > self.topViewMinHeight {
            self.topViewHeightConstraint.constant = -scrollView.contentOffset.y
        }
    }
    
}

// MARK: - UITableView Data Source

extension TripDetailViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let descriptionCell = self.tableview.dequeueReusableCell(withIdentifier: self.tripDetailDescriptionTitleCellName, for: indexPath) as! TripDetailDescriptionTableViewCell
        descriptionCell.trip = self.trip
        return descriptionCell
    }
    
}
