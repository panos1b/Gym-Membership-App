//
//  BookingResultsView.swift
//  Gym App
//
//  Created by Panos Daskalopoulos on 25/10/24.
//

import SwiftUI
// FIXME
// FIXME
struct BookingResultsView: View {
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
                    AppointmentCardView(appointmentCard: AppointmentCard(category: "Σάβαττο | 26/10 | 10:00", description: "Empower"))
                    
                    

                }
                .toolbar {
                    // Bottom bar
                    ToolbarItem(placement: .bottomBar) {
                    }
                }
                .foregroundColor(Color("MainColor"))
            }
        }
    }
}


#Preview {
    BookingResultsView()
}
