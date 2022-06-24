//
//  Participant.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import FirebaseFirestoreSwift

struct Participant: FirebaseModel {
    
    static var collectionName = "participants"
    
    @DocumentID var email: String?
    let name: String
}
