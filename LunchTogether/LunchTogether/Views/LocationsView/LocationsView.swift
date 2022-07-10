import SwiftUI

struct LocationsView: View {
    
    @StateObject var viewModel = LocationsViewModel()
    
    var body: some View {
        List(viewModel.locations) { location in
            NavigationLink(destination: LunchesView(location: location)) {
                Text(location.city)
                
                Text(location.office)
                    .font(.caption)
            }
        }
        .task {
            viewModel.getLocations()
        }
        .navigationTitle("Locations")
    }
}
