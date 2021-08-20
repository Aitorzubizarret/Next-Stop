//
//  ItemsViewModel.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 20/08/2021.
//

import Foundation

class ItemsViewModel {
    
    // MARK: - Properties
    
    // Binding
    var binding = { () -> () in }
    
    // Data Source
    var itemsList: [Item]? {
        didSet {
            self.binding()
        }
    }
    
    // MARK: - Methods
    
    ///
    /// Get Items.
    ///
    public func getItems() {
        
        // Places
        let placeDemo1: Place = Place(id: UUID(), name: "Place 1")
        let placeDemo2: Place = Place(id: UUID(), name: "Place 2")
        let placeDemo3: Place = Place(id: UUID(), name: "Place 3")
        
        // Trips
        let tripDemo1: Trip = Trip(id: UUID(), name: "Trip 1", notes: [], places: [])
        let tripDemo2: Trip = Trip(id: UUID(), name: "Trip 2", notes: [], places: [])
        let tripDemo3: Trip = Trip(id: UUID(), name: "Trip 3", notes: [], places: [])
        
        // Notes
        let noteDemo1: Note = Note(id: UUID(), title: "Note 1", description: "")
        let noteDemo2: Note = Note(id: UUID(), title: "Note 2", description: "")
        let noteDemo3: Note = Note(id: UUID(), title: "Note 3", description: "")
        
        // All
        var items: [Item] = []
        items.append(Item(place: placeDemo1))
        items.append(Item(place: placeDemo2))
        items.append(Item(place: placeDemo3))
        items.append(Item(trip: tripDemo1))
        items.append(Item(trip: tripDemo2))
        items.append(Item(trip: tripDemo3))
        items.append(Item(note: noteDemo1))
        items.append(Item(note: noteDemo2))
        items.append(Item(note: noteDemo3))
        
        self.itemsList = items
    }
    
}
