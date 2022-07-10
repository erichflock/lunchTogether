import FirebaseFirestoreSwift

struct Participant: FirebaseModel, Identifiable {
    
    static var collectionName = "participants"
    
    @DocumentID var email: String?
    var id: String? { email }
    let name: String
}
