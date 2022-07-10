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

            guard let documents = snapshot?.documents else {
                onComplete(nil)
                return
            }
            
            onComplete(documents.compactMap { try? $0.data(as: T.self) })
        }
    }
    
    func `get`(id: String, onComplete: @escaping (T?) -> Void) {
        
        let reference = firebase.collection(T.collectionName).document(id)
        reference.getDocument(as: T.self) { onComplete(try? $0.get()) }
    }
}
