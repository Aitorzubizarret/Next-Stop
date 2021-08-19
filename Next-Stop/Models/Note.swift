//
//  Note.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 19/08/2021.
//

import Foundation

struct Note: Codable {
    var id: UUID
    var title: String
    var description: String
}
