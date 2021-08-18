//
//  PlacesViewModel.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 18/08/2021.
//

import Foundation

class PlacesViewModel {
    
    // MARK: - Properties
    
    // Binding
    var binding = { () -> () in }
    
    // Data Source
    var placesList: [Place]? {
        didSet {
            self.binding()
        }
    }
    
    // MARK: - Methods
    
    ///
    /// Get places.
    ///
    public func getPlaces() {
        let placeDemo1: Place = Place(id: UUID(), name: "Place 1")
        let placeDemo2: Place = Place(id: UUID(), name: "Place 2")
        let placeDemo3: Place = Place(id: UUID(), name: "Place 3")
        
        let places: [Place] = [placeDemo1, placeDemo2, placeDemo3]
        
        self.placesList = places
    }
}
