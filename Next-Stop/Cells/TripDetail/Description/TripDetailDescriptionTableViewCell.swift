//
//  TripDetailDescriptionTableViewCell.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 27/08/2021.
//

import UIKit

class TripDetailDescriptionTableViewCell: UITableViewCell {
    
    // MARK: - UI Elements
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // MARK: - Properties
    
    var trip: Trip? {
        didSet {
            guard let receivedTrip: Trip = self.trip else { return }
            
            self.descriptionLabel.text = receivedTrip.description ?? "no description"
        }
    }
    
    // MARK: - Methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
