//
//  NoteTableViewCell.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 21/08/2021.
//

import UIKit

class NoteTableViewCell: UITableViewCell {
    
    // MARK: - UI Elements
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // MARK: - Properties
    
    var note: Note? {
        didSet {
            guard let receivedNote = self.note else { return }
            
            self.titleLabel.text = receivedNote.title
            self.descriptionLabel.text = receivedNote.description
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
