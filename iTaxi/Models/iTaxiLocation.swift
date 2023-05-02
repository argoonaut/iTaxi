//
//  iTaxiLocation.swift
//  iTaxi
//
//  Created by Alexander Kozin on 18.04.2023.
//

import Foundation
import CoreLocation

struct iTaxiLocation: Identifiable {
    let id = NSUUID().uuidString
    let title: String
    let coordinate: CLLocationCoordinate2D
    
}
