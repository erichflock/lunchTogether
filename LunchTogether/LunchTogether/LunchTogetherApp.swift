//
//  LunchTogetherApp.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import SwiftUI

@main
struct LunchTogetherApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LocationsView()
            }
        }
    }
}
