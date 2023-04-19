//
//  SavedLocation.swift
//  iTaxi
//
//  Created by Alexandr Kozin on 19.04.2023.
//

import Foundation
import Firebase

struct SavedLocation: Codable {
    let title: String
    let address: String
    let coordinates: GeoPoint
}
