//
//  TripTableViewCell.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 21/08/2021.
//

import UIKit

class TripTableViewCell: UITableViewCell {
    
    // MARK: - UI Elements
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var tripName: UILabel!
    
    // MARK: - Properties
    
    var trip: Trip? {
        didSet {
            guard let receivedTrip = self.trip else { return }
            
            self.tripName.text = receivedTrip.name
        }
    }
    
    // MARK: - Methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.setupView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    ///
    /// Setup the view.
    ///
    private func setupView() {
        self.selectionStyle = .none
        
        // UIView.
        self.mainView.layer.borderWidth = 1
        self.mainView.layer.borderColor = UIColor.gray.cgColor
        self.mainView.layer.cornerRadius = 4
    }
    
}
