//
//  Place.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 17/08/2021.
//

import Foundation

struct Place: Codable {
    var id: UUID
    var name: String
    var description: String?
}
