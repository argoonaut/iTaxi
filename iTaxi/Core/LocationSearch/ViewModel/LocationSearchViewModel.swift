//
//  LocationSearchViewModel.swift
//  iTaxi
//
//  Created by Alexander Kozin on 05.03.2023.
//

import Foundation
import MapKit

class LocationSearchViewModel: NSObject, ObservableObject {
    
    // MARK: Properties
    
    @Published var results = [MKLocalSearchCompletion]()
    
    var queryFragment: String = "" {
        didSet {
            searchCompleter.queryFragment = queryFragment
        }
    }
    private let searchCompleter = MKLocalSearchCompleter()
    
    override init() {
        super.init()
        searchCompleter.delegate = self
        searchCompleter.queryFragment = queryFragment
    }
    
}

// MARK: - MKLocalSearchCompleterDelegate

extension LocationSearchViewModel: MKLocalSearchCompleterDelegate {
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        self.results = completer.results
    }
}
