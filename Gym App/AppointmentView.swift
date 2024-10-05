//
//  AppointmentView.swift
//  Gym App
//
//  Created by Panos Daskalopoulos on 7/9/24.
//

import SwiftUI

struct AppointmentView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    AppointmentCardView(appointmentCard: AppointmentCard(category: "Τρίτη | 8/10 | 16:00", description: "TMO strength"))
                    AppointmentCardView(appointmentCard: AppointmentCard(category: "Σάβατο | 12/10 | 10:00", description: "TMO cardio"))
                    AppointmentCardView(appointmentCard: AppointmentCard(category: "Τετάρτη | 16/10 | 16:00", description: "Empower"))
                    AppointmentCardView(appointmentCard: AppointmentCard(category: "Σάββατο | 19/10 | 7:30", description: "Empower"))
                    AppointmentCardView(appointmentCard: AppointmentCard(category: "Σάββατο | 19/10 | 18:00", description: "TMO strength"))
                    AppointmentCardView(appointmentCard: AppointmentCard(category: "Παρασκευή | 25/10 | 18:00", description: "TMO strength"))
                    

                }
                .toolbar {
                    // Bottom bar
                    ToolbarItem(placement: .bottomBar) {
                            HStack {
                                SButtonView(SButton: SButton(symbol: "person"))
                                    .scaleEffect(1.5)
                                                                     
                                Spacer()
                                
                                SButtonView(SButton: SButton(symbol: "calendar"))
                                    .scaleEffect(1.5)
                                    .foregroundColor(Color("MainColor"))
                                    .background(Color(.white).opacity(0.15).clipShape(RoundedRectangle(cornerRadius: 8)).scaleEffect(1.4))
                                    .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                
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
    AppointmentView()
}
