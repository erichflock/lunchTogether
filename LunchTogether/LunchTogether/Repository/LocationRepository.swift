//
//  LocationRepository.swift
//  LunchTogether
//
//  Created by Vincent Petritz on 24.06.22.
//

import Foundation
import FirebaseFirestore

class FirebaseRepository<T: FirebaseModel & Identifiable> {
    
    private let firebase: FirebaseFirestore.Firestore
    private let decoder: JSONDecoder
    
    init() {
        firebase = Firestore.firestore()
        decoder = JSONDecoder()
    }
    
    func list(@escaping onComplete: ([T], Error) -> Void) {
        firebase.collection(T.collectionName).getDocuments { snapshot, error in
            if error {
                onComplete([T](), error)
                return
            }
            
            guard let document = snapshot?.documents.first() else {
                onComplete(nil, nil)
                return
            }
            
            let decodedDocuments = decoder.decode(T.self, from: document)
            onComplete(decodedDocuments)
        }
    }
    
    func `get`(id: Identifiable.ID, @escaping onComplete(T?, Error) -> Void) {
        
        guard let document = firebase.collection(T.collectionName).value(forKey: id) else {
            onComplete(nil, nil)
            return
        }
        
        return decoder.decode(T.self, from: document)
    }
}
