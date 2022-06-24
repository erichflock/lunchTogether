//
//  LocationsViewModel.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import SwiftUI

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location] = []
    
    func getLocations() {
        locations.removeAll()
        let location1 = Location(city: "München", office: "Brücke")
        let location2 = Location(city: "Leipzig", office: "Brühl")
        let location3 = Location(city: "Berlin", office: "Alexanderplatz")
        locations.append(location1)
        locations.append(location2)
        locations.append(location3)
    }
    
}
