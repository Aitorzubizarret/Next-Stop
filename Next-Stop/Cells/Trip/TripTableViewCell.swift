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
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var startDateLabel: UILabel!
    @IBOutlet weak var endDateLabel: UILabel!
    
    // MARK: - Properties
    
    var trip: Trip? {
        didSet {
            guard let receivedTrip = self.trip else { return }
            
            self.nameLabel.text = receivedTrip.name
            
            if let startDate: Date = receivedTrip.startDate {
                self.startDateLabel.text = "Start: \(startDate.description)"
            } else {
                self.startDateLabel.text = "Start: -"
            }
            
            if let endDate: Date = receivedTrip.endDate {
                self.endDateLabel.text = "End:  \(endDate.description)"
            } else {
                self.endDateLabel.text = "End: -"
            }
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
        
        // UIImageView
        self.photoImageView.layer.cornerRadius = 6
    }
    
}
