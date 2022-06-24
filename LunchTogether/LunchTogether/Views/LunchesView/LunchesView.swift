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
        VStack {
            
            List(viewModel.lunches) { lunch in
                NavigationLink(destination: Text(lunch.restaurant)) {
                    Text(lunch.time)
                }
            }
            .task {
                viewModel.getLunches()
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding()
            }
            .background(.white)
            .foregroundColor(.blue)
            .controlSize(.large)
            .cornerRadius(100/2)
        }
        .background(Color(.systemGroupedBackground))
        .navigationTitle("Lunches")
    }
}

struct LunchesView_Previews: PreviewProvider {
    static var previews: some View {
        LunchesView(location: .init(city: "Leipzig", office: "Brühl"))
    }
}
