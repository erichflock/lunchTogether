//
//  Location.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import Foundation
import FirebaseFirestoreSwift

struct Location: Identifiable, FirebaseModel {
    
    static var collectionName = "locations"
    
    @DocumentID var id: String?
    var city: String
    var office: String
}
