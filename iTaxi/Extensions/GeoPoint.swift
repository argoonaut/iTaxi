//
//  GeoPoint.swift
//  iTaxi
//
//  Created by Alexander Kozin on 02.05.2023.
//

import Foundation
import Firebase
import CoreLocation

extension GeoPoint {
    func toCoordinate() -> CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: self.latitude, longitude: self.longitude)
    }
}
