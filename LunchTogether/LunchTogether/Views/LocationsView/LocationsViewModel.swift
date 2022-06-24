//
//  LocationsViewModel.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import SwiftUI
import Firebase
import FirebaseFirestore

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location] = []
    
    func getLocations() {
        let query = Firestore.firestore().collection("locations").limit(to: 50)
        
        query.addSnapshotListener({ snapshot, error in
            guard let snapshot = snapshot else {
                print("Error fetching snapshot results: \(error!)")
                return
            }
            
            var models: [Location] = []
            snapshot.documents.forEach({ document in
                let data = document.data()
                if let city = data["city"] as? String, let office = data["office"] as? String {
                    models.append(Location(city: city, office: office))
                }
            })
            self.locations = models
        })
    }
    
}
