//
//  User.swift
//  iTaxi
//
//  Created by Alexander Kozin on 19.04.2023.
//

import Foundation

struct User: Codable {
    let fullname: String
    let email: String
    let uid: String
    
    var homeLocation: SavedLocation?
    var workLocation: SavedLocation?
}
