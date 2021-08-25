//
//  PlaceDetailViewController.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 25/08/2021.
//

import UIKit

class PlaceDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupView()
    }

    ///
    /// Setup the View.
    ///
    private func setupView() {
        self.title = "Place Detail VC"
    }
    
}
