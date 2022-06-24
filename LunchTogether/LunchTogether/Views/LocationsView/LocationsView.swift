//
//  ContentView.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import SwiftUI

struct LocationsView: View {
    
    @StateObject var viewModel = LocationsViewModel()
    
    var body: some View {
        List(viewModel.locations) { location in
            NavigationLink(destination: Text(location.office)) {
                Text(location.city)
            }
        }
        .task {
            viewModel.getLocations()
        }
        .navigationTitle("Locations")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
    }
}
