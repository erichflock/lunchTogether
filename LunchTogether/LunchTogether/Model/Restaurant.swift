import Foundation
import FirebaseFirestoreSwift

struct Restaurant: FirebaseModel {
    
    static var collectionName = "restaurants"
    
    @DocumentID var id: String?
    let name: String
    let address: String
}
