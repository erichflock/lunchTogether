//
//  LunchesViewModel.swift
//  LunchTogether
//
//  Created by Erich Flock on 24.06.22.
//

import SwiftUI

class LunchesViewModel: ObservableObject {
    
    @Published var lunches: [Lunch] = []
    @Published var isShowingFormView: Bool = false
    
//    private let repository: FirebaseRepository
    
    init() {
//        repository = FirebaseRepository<Lunch>()
    }
    
    func getLunches() {
//        repository.
        
        lunches.removeAll()
        let lunch1 = Lunch(restaurant: "Subway", time: "26-06-2022", participants: [.init(email: "james@check24.de", name: "James")])
        let lunch2 = Lunch(restaurant: "Burguer King", time: "26-06-2022", participants: [.init(email: "karl@check24.de", name: "Karl")])
        let lunch3 = Lunch(restaurant: "Pizza Place", time: "26-06-2022", participants: [.init(email: "tom@check24.de", name: "Tom")])
        lunches.append(lunch1)
        lunches.append(lunch2)
        lunches.append(lunch3)
    }
    
    func getBlurRadius() -> CGFloat {
        isShowingFormView ? 20 : 0
    }
    
}
