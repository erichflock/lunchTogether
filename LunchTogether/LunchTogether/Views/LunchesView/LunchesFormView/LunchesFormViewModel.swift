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
}
