import Foundation
import FirebaseFirestoreSwift

struct Location: FirebaseModel, Identifiable {
    
    static var collectionName = "locations"
    
    @DocumentID var id: String?
    var city: String
    var office: String
}
