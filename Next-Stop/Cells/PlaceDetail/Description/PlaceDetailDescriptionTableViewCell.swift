//
//  PlaceDetailDescriptionTableViewCell.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 11/09/2021.
//

import UIKit

class PlaceDetailDescriptionTableViewCell: UITableViewCell {
    
    // MARK: - UI Elements
    
    @IBOutlet weak var nameLabel: UILabel!
    
    // MARK: - Properties
    
    var place: Place? {
        didSet {
            guard let receivedPlace = self.place else { return }
            
            self.nameLabel.text = receivedPlace.name
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
    }
    
}
