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
    var itemsList: [Item] = [] {
        didSet {
            self.binding()
        }
    }
    
    var lock = DispatchSemaphore(value: 1) // Used to control the data writing in itemsList by different methods at the same time.
    
    // MARK: - Methods
    
    ///
    /// Get Items.
    ///
    public func getItems() {
        
        // Places
        self.getPlaces { (result) in
            switch result {
            case .success(let newPlaces):
                var items: [Item] = []
                
                for place in newPlaces {
                    items.append(Item(place: place))
                }
                
                self.lock.wait()
                self.itemsList = self.itemsList + items
                self.lock.signal()
            case .failure(let error):
                print("Error getting places: \(error)")
            }
        }
        
        // Trips
        self.getTrips { (result) in
            switch result {
            case .success(let newTrips):
                var items: [Item] = []
                
                for trip in newTrips {
                    items.append(Item(trip: trip))
                }
                
                self.lock.wait()
                self.itemsList = self.itemsList + items
                self.lock.signal()
            case .failure(let error):
                print("Error getting trips: \(error)")
            }
        }
        
        // Notes
        self.getNotes { (result) in
            switch result {
            case .success(let newNotes):
                var items: [Item] = []
                
                for note in newNotes {
                    items.append(Item(note: note))
                }
                
                self.lock.wait()
                self.itemsList = self.itemsList + items
                self.lock.signal()
            case .failure(let error):
                print("Error getting notes: \(error)")
            }
        }
    }
    
}

// MARK: - API Places

extension ItemsViewModel {
    
    ///
    /// Get places asynchronously.
    ///
    private func getPlaces(completion: @escaping (Result<[Place], Error>) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 0.5) {
            // Places
            let placeDemo1: Place = Place(id: UUID(), name: "Place 1")
            let placeDemo2: Place = Place(id: UUID(), name: "Place 2")
            let placeDemo3: Place = Place(id: UUID(), name: "Place 3")
            
            completion(.success([placeDemo1, placeDemo2, placeDemo3]))
        }
    }
    
}

// MARK: - API Trips

extension ItemsViewModel {
    
    ///
    /// Get trips asynchronously.
    ///
    private func getTrips(completion: @escaping (Result<[Trip], Error>) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 0.5) {
            // Trips
            let tripDemo1: Trip = Trip(id: UUID(), name: "Trip 1", notes: [], places: [])
            let tripDemo2: Trip = Trip(id: UUID(), name: "Trip 2", notes: [], places: [])
            let tripDemo3: Trip = Trip(id: UUID(), name: "Trip 3", notes: [], places: [])
            
            completion(.success([tripDemo1, tripDemo2, tripDemo3]))
        }
        
    }
    
}

// MARK: - API Notes

extension ItemsViewModel {
    
    ///
    /// Get notes asynchronously.
    ///
    private func getNotes(completion: @escaping (Result<[Note], Error>) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 0.5) {
            // Notes
            let noteDemo1: Note = Note(id: UUID(), title: "Note 1", description: "")
            let noteDemo2: Note = Note(id: UUID(), title: "Note 2", description: "")
            let noteDemo3: Note = Note(id: UUID(), title: "Note 3", description: "")
            
            completion(.success([noteDemo1, noteDemo2, noteDemo3]))
        }
    }
    
}
