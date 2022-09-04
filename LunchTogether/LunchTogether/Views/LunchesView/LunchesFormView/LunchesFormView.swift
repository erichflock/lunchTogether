//
//  LunchesFormView.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import SwiftUI

struct LunchesFormView: View {
    
    @StateObject var viewModel = LunchesFormViewModel()
    @Binding var isShowingView: Bool
    @Binding var location: Location
    
    var body: some View {
        VStack {
            Form {
                TextField("Restaurant name", text: $viewModel.restaurantName)
                TextField("Restaurant address", text: $viewModel.restaurantAddress)
                DatePicker("Date", selection: $viewModel.date, displayedComponents: .date)
            }
            .padding()
            Button {
                viewModel.addEvent(location)
            } label: {
                Text("Add Event")
            }
            .padding()
        }
        .frame(width: 300, height: 300)
        .background(Color(.systemGroupedBackground))
        .cornerRadius(10)
        .shadow(radius: 40)
        .overlay(XRoundedDismissButton(isShowingView: $isShowingView), alignment: .topTrailing)
    }
}

struct LunchesFormView_Previews: PreviewProvider {
    static var previews: some View {
        LunchesFormView(isShowingView: .constant(false), location: .constant(.init(city: "city", office: "office")))
    }
}
