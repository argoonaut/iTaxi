//
//  iTaxiApp.swift
//  iTaxi
//
//  Created by Alexander Kozin on 01.03.2023.
//

import SwiftUI

@main
struct iTaxiApp: App {
    
    @StateObject var locationViewModel = LocationSearchViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
