//
//  Lunch.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import SwiftUI

struct Lunch: Identifiable {
    let id = UUID()
    let restaurant: String
    let time: String
    let participants: [Participant]
}
