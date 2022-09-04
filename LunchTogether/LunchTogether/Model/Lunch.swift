import SwiftUI
import FirebaseFirestoreSwift

struct Lunch: FirebaseModel, Identifiable {
    
    static var collectionName = "lunches"
    
    @DocumentID var id: String?
    var location: Location
    var restaurant: Restaurant
    var participants: [Participant]
    var date: Date
}
