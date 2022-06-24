//
//  LunchesView.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import SwiftUI

struct LunchesView: View {
    
    @StateObject var viewModel = LunchesViewModel()
    let location: Location
    
    var body: some View {
        List(viewModel.lunches) { lunch in
            NavigationLink(destination: Text(lunch.restaurant)) {
                Text(lunch.time)
            }
        }
        .task {
            viewModel.getLunches()
        }
        .navigationTitle("Lunches")
    }
}

struct LunchesView_Previews: PreviewProvider {
    static var previews: some View {
        LunchesView(location: .init(city: "Leipzig", office: "Brühl"))
    }
}
