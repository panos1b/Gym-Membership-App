//
//  BottomBarView.swift
//  Gym App
//
//  Created by Panos Daskalopoulos on 27/10/24.
//

import SwiftUI


struct BottomBarView: View {
    let selected: Int
    var body: some View {
            VStack {
            }
            .hidden()
            .frame(width: 0, height: 0)
            .toolbar {
                // Bottom bar
                ToolbarItem(placement: .bottomBar) {
                        HStack {
                            NavigationLink(destination: ContentView()) {
                                SButtonView(SButton: SButton(symbol: "person", enabled: selected == 0))
                            }
                            
                            Spacer()
                            
                            NavigationLink(destination: AppointmentView()) {
                                SButtonView(SButton: SButton(symbol: "calendar", enabled: selected == 1))
                            }
                            
                            Spacer()
                            
                            NavigationLink(destination: ContentView()) {
                                SButtonView(SButton: SButton(symbol: "note", enabled: selected == 2))
                            }
                            
                            Spacer()
                            
                            NavigationLink(destination: ContentView()) {
                                SButtonView(SButton: SButton(symbol: "book", enabled: selected == 3))
                            }
                        }
                        .padding(.horizontal, 40) // Add horizontal padding for spacing
                        .offset(x: 0, y: 15)
                        .foregroundColor(.white)
                    }
                    
            }
            .foregroundColor(Color("MainColor"))
        }
    
    
}

#Preview {
    BottomBarView(selected: 0)
}
