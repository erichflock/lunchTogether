//
//  LunchesFormViewModel.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import SwiftUI

class LunchesFormViewModel: ObservableObject {
    
    var restaurantName: String = ""
    var restaurantAddress: String = ""
    var date: Date = .init()
    
    private let firebaseRepository = FirebaseRepository<Lunch>()
    
    func addEvent(_ location: Location) {
        print(location)
        firebaseRepository.addEvent(lunch: .init(location: location, restaurant: .init(name: restaurantName, address: restaurantAddress), participants: [], date: date))
    }
}
