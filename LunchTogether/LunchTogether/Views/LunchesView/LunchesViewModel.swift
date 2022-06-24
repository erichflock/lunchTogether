//
//  LunchesViewModel.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import SwiftUI

class LunchesViewModel: ObservableObject {
    
    @Published var lunches: [Lunch] = []
    
    func getLunches() {
        lunches.removeAll()
        let lunch1 = Lunch(restaurant: "Subway", time: "26-06-2022", participants: [.init(name: "James", email: "james@check24.de")])
        let lunch2 = Lunch(restaurant: "Burguer King", time: "26-06-2022", participants: [.init(name: "Karl", email: "karl@check24.de")])
        let lunch3 = Lunch(restaurant: "Pizza Place", time: "26-06-2022", participants: [.init(name: "Tom", email: "tom@check24.de")])
        lunches.append(lunch1)
        lunches.append(lunch2)
        lunches.append(lunch3)
    }
    
}
