import SwiftUI

struct LunchesView: View {
    
    @StateObject var viewModel = LunchesViewModel()
    let location: Location
    
    var body: some View {
        ZStack {
            VStack {
                List(viewModel.lunches) { lunch in
                    NavigationLink(destination: Text(lunch.restaurant.name)) {
                        Text("12:12")
                        Text("\(lunch.participants.count) Teilnehmer")
                    }
                }
                .task {
                    viewModel.getLunches()
                }
                
                Spacer()
                
                Button {
                    viewModel.isShowingFormView.toggle()
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
            .blur(radius: viewModel.getBlurRadius())
            
            if viewModel.isShowingFormView {
                LunchesFormView(isShowingView: $viewModel.isShowingFormView)
                    .padding(.bottom, 100)
            }
        }
        .background(Color(.systemGroupedBackground))
        .navigationTitle("Lunches")
    }
}
