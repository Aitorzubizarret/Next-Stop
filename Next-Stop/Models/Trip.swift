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
    var info: [Note]
    var places: [Place]
}
