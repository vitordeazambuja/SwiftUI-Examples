import SwiftUI

struct ItemDetailView: View {
    @State private var quantityRemaining = Int.random(in: 1...10)
    @State private var showConfirmation = false
    let itemName: String
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("\(itemName)")
                    .font(.title)
                    .padding()
                Spacer()
                Image(systemName: "photo")
                    .font(.system(size: 200))
                    .padding()
                Text("Quantity Remaining: \(quantityRemaining)")
                Spacer()
                Button {
                    if quantityRemaining > 0 {
                        quantityRemaining -= 1
                        if quantityRemaining == 0 {
                            showConfirmation = true
                        }
                    }
                } label: {
                    Text("Add one to your cart")
                }
                Spacer()
            }
            .navigationDestination(isPresented: $showConfirmation) {
                Text("You bought all the \(itemName)")
            }
        }
    }
}

#Preview {
    ItemDetailView(itemName: "Test Item")
}
