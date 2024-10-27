import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Spacer()
                    
                    BigButtonView(BigButton: BigButton(ammount: "1", tittle: "ΣΥΝΔΡΟΜΕΣ", size: 1))
                    
                    Spacer()
                    
                    BigButtonView(BigButton: BigButton(ammount: "7", tittle: "ΡΑΝΤΕΒΟΥ", size: 1.4))
                    
                    Spacer()
                    
                    BigButtonView(BigButton: BigButton(ammount: "1", tittle: "ΜΗΝΥΜΑΤΑ", size: 1))
                    
                    Spacer()
                }
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
                            .offset(x: 0, y: 15)
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
                        .offset(x: 0, y: 15)
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
                            .offset(x: 0, y: 15)
                        }
                    }
                    
                }
                .foregroundColor(Color("MainColor"))
            }
        }
        BottomBarView(selected: 0)
    }
}

#Preview {
    ContentView()
}
