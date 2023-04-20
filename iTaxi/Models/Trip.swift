//
//  Trip.swift
//  iTaxi
//
//  Created by Alexander Kozin on 20.04.2023.
//

import Firebase

struct Trip: Identifiable, Codable {
    let id: String
    let passengerUid: String
    let driverUid: String
    
    let passengerName: String
    let driverName: String
    
    let passengerLocation: GeoPoint
    let driverLocation: GeoPoint
    
    let pickupLocationName: String
    let dropoffLocationName: String
    
    let pickupLocationAddres: String
    
    let pickupLocation: GeoPoint
    let dropoffLocation: GeoPoint
    
    let tripCost: Double
    
}
