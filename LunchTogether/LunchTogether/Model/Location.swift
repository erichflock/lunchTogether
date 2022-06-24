//
//  Location.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import Foundation

struct Location: Identifiable {
    let id = UUID()
    let city: String
    let office: String
}
