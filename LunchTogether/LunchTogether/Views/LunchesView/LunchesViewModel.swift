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

    private let repository: FirebaseRepository<Lunch>
    
    init() {
        repository = FirebaseRepository<Lunch>()
    }
    
    func getLunches() {
        repository.list { [weak self] lunches in
            guard let lunches = lunches else {
                return
            }

            self?.lunches = lunches
        }
    }

    func getBlurRadius() -> CGFloat {
        isShowingFormView ? 20 : 0
    }

}
