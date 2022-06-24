//
//  Lunch.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import SwiftUI
import FirebaseFirestoreSwift

struct Lunch: Identifiable {
    var id = UUID()
    var restaurant: String
    var time: String
    var participants: [Participant]
}
