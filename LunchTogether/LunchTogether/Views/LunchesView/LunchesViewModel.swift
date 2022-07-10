import SwiftUI

class LunchesViewModel: ObservableObject {
    
    @Published var lunches: [Lunch] = []
    @Published var isShowingFormView: Bool = false
    
    private let repository: FirebaseRepository<Lunch>
    
    init() {
        repository = FirebaseRepository<Lunch>()
    }
    
    func getLunches() {
        repository.list(onComplete: { [weak self] in
            print($0)
            self?.lunches = $0 ?? []
        })
    }
    
    func getBlurRadius() -> CGFloat {
        isShowingFormView ? 20 : 0
    }
    
}
