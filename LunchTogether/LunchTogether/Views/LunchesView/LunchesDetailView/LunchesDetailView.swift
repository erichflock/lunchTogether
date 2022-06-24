//
//  LunchesDetailView.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import SwiftUI

struct LunchesDetailView: View {
    
    @StateObject var viewModel = LunchesDetailViewModel()
    @Binding var isShowingView: Bool
    let lunch: Lunch
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Restaurant: \(lunch.restaurant)")
            Text("Date: \(lunch.time)")
            Text("Number of participants: \(lunch.participants.count)")
            Button {
                viewModel.joinEvent()
            } label: {
                Text("Join event")
            }
            .padding(.bottom, 100)
        }
    }
}

struct LunchesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LunchesDetailView(isShowingView: .constant(false), lunch: .init(id: "1", restaurant: "Burguer King", time: Date().description, participants: [.init(name: "james")]))
    }
}
