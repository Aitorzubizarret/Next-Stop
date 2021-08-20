//
//  Item.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 20/08/2021.
//

import Foundation

struct Item: Codable {
    var id: UUID
    var name: String
    var notes: [Note]?
    var places: [Place]?
    
    init(place: Place) {
        self.id = place.id
        self.name = place.name
    }
    
    init(trip: Trip) {
        self.id = trip.id
        self.name = trip.name
        self.notes = trip.notes
        self.places = trip.places
    }
    
    init(note: Note) {
        self.id = note.id
        self.name = note.title
    }
}
