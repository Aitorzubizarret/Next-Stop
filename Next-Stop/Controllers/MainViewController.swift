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
    var items: [Item] = []
    
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
    }
    
}

// MARK: - UITableView Delegate

extension MainViewController: UITableViewDelegate {}

// MARK: - UITableView Data Source

extension MainViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell") as! UITableViewCell
        cell.textLabel?.text = self.items[indexPath.row].name
        return cell
    }
    
}
