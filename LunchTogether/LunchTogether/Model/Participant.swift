//
//  Participant.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import FirebaseFirestoreSwift

struct Participant: FirebaseModel, Identifiable {
    
    static var collectionName = "participants"
    
    var id: String? { get { email } }
    @DocumentID var email: String?
    let name: String
}
