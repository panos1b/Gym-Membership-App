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
                .padding(.bottom, 30)
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
                                    .scaleEffect(1.5)
                                    .foregroundColor(Color("MainColor"))
                                    .background(Color(.white).opacity(0.15).clipShape(RoundedRectangle(cornerRadius: 8)).scaleEffect(1.4))
                                    .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                    
                                
                                Spacer()
                                
                                SButtonView(SButton: SButton(symbol: "calendar"))
                                    .scaleEffect(1.5)
                                
                                Spacer()
                                
                                SButtonView(SButton: SButton(symbol: "note"))
                                    .scaleEffect(1.5)
                                
                                Spacer()
                                
                                SButtonView(SButton: SButton(symbol: "book"))
                                    .scaleEffect(1.5)
                            }
                            .padding(.horizontal, 30) // Add horizontal padding for spacing
                            .offset(x: 0, y: 15)
                            .background(Color(.gray).ignoresSafeArea().scaleEffect(3).offset(x: 0, y: 30).opacity(0.6))
                            .foregroundColor(.white)
                    }


                }
                .foregroundColor(Color("MainColor"))
            }
        }
    }
}

#Preview {
    ContentView()
}
