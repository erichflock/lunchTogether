//
//  Location.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import Foundation
import FirebaseFirestoreSwift

struct Location: Identifiable {
    var id = UUID()
    var city: String
    var office: String
}
