//
//  LocationsViewModel.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import SwiftUI

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location] = []
    
    private let repository: FirebaseRepository<Location>
    
    init() {
        repository = FirebaseRepository<Location>()
    }
    
    func getLocations() {
        repository.list { [weak self] locations in
            guard let locations = locations else {
                return
            }

            self?.locations = locations
        }
    }
}
