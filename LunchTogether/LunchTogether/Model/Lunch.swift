//
//  Lunch.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import SwiftUI
import FirebaseFirestoreSwift

struct Lunch: Identifiable {
    
    static var collectionName = "lunches"
    
    @DocumentID var id: String?
    var restaurant: String
    var time: String
    var participants: [Participant]
}
