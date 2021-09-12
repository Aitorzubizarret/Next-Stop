//
//  PlaceDetailPhotoAndNameTableViewCell.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 12/09/2021.
//

import UIKit

class PlaceDetailPhotoAndNameTableViewCell: UITableViewCell {
    
    // MARK: - UI Elements
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    // MARK: - Properties
    
    var photo: UIImage?
    var name: String? {
        didSet {
            guard let receivedName = self.name else { return }
            
            self.nameLabel.text = receivedName
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
        
        // ImageView.
        self.photoImageView.layer.cornerRadius = 6
    }
    
}
