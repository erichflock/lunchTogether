//
//  LunchesView.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import SwiftUI

struct LunchesView: View {
    
    @StateObject var viewModel = LunchesViewModel()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct LunchesView_Previews: PreviewProvider {
    static var previews: some View {
        LunchesView()
    }
}
