//
//  HomeView.swift
//  iTaxi
//
//  Created by Alexander Kozin on 01.03.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        iTaxiMapViewRepresentable()
            .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
