import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    BigButtonView(BigButton: BigButton(ammount: "1", tittle: "ΣΥΝΔΡΟΜΕΣ", size: 1))
                    
                    Spacer()
                    
                    BigButtonView(BigButton: BigButton(ammount: "7", tittle: "ΡΑΝΤΕΒΟΥ", size: 1.4))
                    
                    Spacer()
                    
                    BigButtonView(BigButton: BigButton(ammount: "1", tittle: "ΜΗΝΥΜΑΤΑ", size: 1))

                    
                }
                .padding(90)
                .toolbar {
                    // Leading item
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            // Action for leading button
                        }) {
                            VStack {
                                Image(systemName: "phone")
                                    .scaledToFit()
                                    .scaleEffect(1.3)
                                    .padding(1)
                                Text("Κλήση")
                            }
                        }
                    }
                    
                    // Middle item
                    ToolbarItem(placement: .principal) {
                        Button(action: {
                            // Action for principal button
                        }) {
                            Image("Barcode")
                                .resizable()
                                .frame(width: 220, height: 200)
                                .colorInvert()
                        }
                    }
                    
                    // Trailing item
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            // Action for trailing button
                        }) {
                            VStack {
                                Image(systemName: "xmark")
                                    .scaledToFit()
                                    .scaleEffect(1.3)
                                    .padding(1)
                                Text("Έξοδος")
                            }
                        }
                    }
                    
                    // Bottom bar
                    ToolbarItem(placement: .bottomBar) {
                        HStack {
                            SButtonView(SButton: SButton(symbol: "person"))
                            SButtonView(SButton: SButton(symbol: "calendar"))
                            SButtonView(SButton: SButton(symbol: "note"))
                            SButtonView(SButton: SButton(symbol: "book"))
                        }
                        .scaleEffect(1.8)
                    }
                }
                .foregroundColor(Color("MainColor"))
            }
        }
    }
}
struct BigButton {
    var ammount: String
    var tittle: String
    var size: Double
}
struct SButton {
    var symbol: String
}

struct BigButtonView: View{
    let BigButton: BigButton
    var body: some View {
        VStack {
            Button(action: {
                // Action for the first button
            }) {
                Text(BigButton.ammount)
                    .font(.system(size: CGFloat(70 * BigButton.size)))
                    .frame(width: CGFloat(100 * BigButton.size), height: CGFloat(100 * BigButton.size))
                    .background(Color("MainColor"))
                    .foregroundColor(Color("SupplementaryColor"))
                    .clipShape(RoundedRectangle(cornerRadius: 20)) // Rounded corners
            }
            Text(BigButton.tittle)
                .bold()
        }
    }
}

struct SButtonView: View {
    let SButton: SButton
    var body: some View {
        Image(systemName: SButton.symbol)
            .padding(6)
    }
}

#Preview {
    ContentView()
}
