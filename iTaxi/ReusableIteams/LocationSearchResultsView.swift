//
//  LocationSearchResultsView.swift
//  iTaxi
//
//  Created by Alexander Kozin on 19.04.2023.
//

import SwiftUI

struct LocationSearchResultsView: View {
    
    @StateObject var viewModel: LocationSearchViewModel
//    @EnvironmentObject var viewModel: LocationSearchViewModel
    let config: LocationResultsViewConfig
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(viewModel.results, id: \.self) { result in
                    LocationSearchResultCell(
                        title: result.title,
                        subtitle: result.subtitle)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            viewModel.selectLocation(result, config: config)
                            
                        }
                    }
                }
            }
        }
    }
}
