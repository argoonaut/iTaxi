//
//  DeveloperPreview.swift
//  iTaxi
//
//  Created by Alexander Kozin on 19.04.2023.
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let mockTrip = Trip(id: NSUUID().uuidString,
                        passengerUid: NSUUID().uuidString,
                        driverUid: NSUUID().uuidString,
                        passengerName: "Alexander Kozin",
                        driverName: "Kostya Lishenkov",
                        passengerLocation: .init(latitude: 37.123, longitude: -122.1),
                        driverLocation: .init(latitude: 37.123, longitude: -122.1),
                        pickupLocationName: "Apple Campus",
                        dropoffLocationName: "Starbucks",
                        pickupLocationAddres: "123 Main St, Palo Alto CA",
                        pickupLocation: .init(latitude: 37.456, longitude: -122.15),
                        dropoffLocation: .init(latitude: 37.042, longitude: -122.2),
                        tripCost: 23,
                        distanceToPassenger: 1000,
                        travelTimeToPassenger: 24)
    
    let mockUser = User(
        fullname: "Alexander Kozin",
        email: "sasha_kozin2020@mail.ru",
        uid: NSUUID().uuidString,
        coordinates: GeoPoint(latitude: 37.785834, longitude: -122.406417),
        accountType: .passenger,
        homeLocation: nil,
        workLocation: nil
    )
}
