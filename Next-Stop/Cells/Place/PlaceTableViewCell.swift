//
//  PlaceTableViewCell.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 21/08/2021.
//

import UIKit

class PlaceTableViewCell: UITableViewCell {
    
    // MARK: - UI Elements
    
    @IBOutlet weak var mainView: UIView!
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
        
        // UIView.
        self.mainView.layer.borderWidth = 1
        self.mainView.layer.borderColor = UIColor.gray.cgColor
        self.mainView.layer.cornerRadius = 4
    }
    
}
