//
//  MainViewController.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 17/08/2021.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - UI Elements
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    
    var itemsViewModel: ItemsViewModel?
    
    var trips: [Trip] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    var places: [Place] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    var notes: [Note] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    var placeCellName: String = "PlaceTableViewCell"
    var tripCellName: String = "TripTableViewCell"
    var noteCellName: String = "NoteTableViewCell"
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupTableView()
    }
    
    ///
    /// Setup the TableView
    ///
    private func setupTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        // Register the cells.
        let placeCell: UINib = UINib(nibName: self.placeCellName, bundle: nil)
        self.tableView.register(placeCell, forCellReuseIdentifier: self.placeCellName)
        
        let tripCell: UINib = UINib(nibName: self.tripCellName, bundle: nil)
        self.tableView.register(tripCell, forCellReuseIdentifier: self.tripCellName)
        
        let noteCell: UINib = UINib(nibName: self.noteCellName, bundle: nil)
        self.tableView.register(noteCell, forCellReuseIdentifier: self.noteCellName)
    }
    
}

// MARK: - UITableView Delegate

extension MainViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC: DetailViewController = DetailViewController()
        self.show(detailVC, sender: self)
    }
    
}

// MARK: - UITableView Data Source

extension MainViewController: UITableViewDataSource {
    
    // MARK: Sections
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        // UIView
        let headerView: UIView = UIView()
        
        // UILabel
        let sectionNameLabel: UILabel = UILabel()
        sectionNameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        sectionNameLabel.translatesAutoresizingMaskIntoConstraints = false
        switch section {
        case 0:
            sectionNameLabel.text = "TRIPS"
        case 1:
            sectionNameLabel.text = "PLACES"
        case 2:
            sectionNameLabel.text = "NOTES"
        default:
            sectionNameLabel.text = ""
        }
        headerView.addSubview(sectionNameLabel)
        NSLayoutConstraint.activate([
            sectionNameLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 15),
            sectionNameLabel.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 10),
            sectionNameLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -15),
            sectionNameLabel.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -10)
        ])
        
        return headerView
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    // MARK: Rows
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return self.trips.count
        case 1:
            return self.places.count
        case 2:
            return self.notes.count
        default:
            return 0
        }
    }
    
    // MARK: Cells
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let tripCell = self.tableView.dequeueReusableCell(withIdentifier: self.tripCellName, for: indexPath) as! TripTableViewCell
            tripCell.trip = self.trips[indexPath.row]
            return tripCell
        case 1:
            let placeCell = self.tableView.dequeueReusableCell(withIdentifier: self.placeCellName, for: indexPath) as! PlaceTableViewCell
            placeCell.place = self.places[indexPath.row]
            return placeCell
        case 2:
            let noteCell = self.tableView.dequeueReusableCell(withIdentifier: self.noteCellName, for: indexPath) as! NoteTableViewCell
            noteCell.note = self.notes[indexPath.row]
            return noteCell
        default:
            return UITableViewCell()
        }
    }
    
}
