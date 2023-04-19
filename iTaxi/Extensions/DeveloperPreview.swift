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
