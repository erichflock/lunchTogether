//
//  Lunch.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import SwiftUI
import FirebaseFirestoreSwift

struct Lunch: FirebaseModel, Identifiable {
    
    static var collectionName = "lunches"
    
    @DocumentID var id: String?
    var restaurant: String
    var happensAt: String
    var participants: [Participant]
    
    private enum CodingKeys: String, CodingKey {
        case id
        case restaurant
        case happensAt = "happens_at"
        case participants
    }
}
