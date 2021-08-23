//
//  Trip.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 19/08/2021.
//

import Foundation

struct Trip: Codable {
    var id: UUID
    var name: String
    var startDate: Date?
    var endDate: Date?
    var notes: [Note]
    var places: [Place]
}
