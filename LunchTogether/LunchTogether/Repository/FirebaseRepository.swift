//
//  LocationRepository.swift
//  LunchTogether
//
//  Created by Vincent Petritz on 24.06.22.
//

import Foundation
import FirebaseFirestore

class FirebaseRepository<T: FirebaseModel> {
    
    private let firebase: FirebaseFirestore.Firestore
    private let decoder: JSONDecoder
    
    init() {
        firebase = Firestore.firestore()
        decoder = JSONDecoder()
    }
    
    func list(onComplete: @escaping ([T]?) -> Void) {
        
        firebase.collection(T.collectionName).getDocuments { snapshot, error in
            if error != nil {
                onComplete(nil)
                return
            }
            
            onComplete(
                snapshot?.documents.compactMap({ document in
                    try? document.data(as: T.self)
                })
            )
        }
    }
    
    func `get`(id: String, onComplete: @escaping (T?) -> Void) {
        
        firebase.document("\(T.collectionName)/\(id)").getDocument(completion: { snapshot, error in
            if error != nil {
                onComplete(nil)
                return
            }
            
            onComplete(try? snapshot?.data(as: T.self))
        })
    }
}
