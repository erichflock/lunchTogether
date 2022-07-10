import SwiftUI

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location] = []
    
    private let locationRepository: FirebaseRepository<Location>
    
    init() {
        locationRepository = FirebaseRepository<Location>()
    }
    
    func getLocations() {
        locationRepository.list { [weak self] in self?.locations = $0 ?? [] }
    }
}
