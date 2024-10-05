//
//  CardView.swift
//  Gym App
//
//  Created by Panos Daskalopoulos on 5/10/24.
//

import SwiftUI

struct AppointmentCard {
    var category: String
    var description: String
}

// RedButtonView structure for the red button
struct RedButtonView: View {
    var buttonText: String

    var body: some View {
        Button(action: {
            // Button action here
        }) {
            Text(buttonText)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
        }
        .background(Color.red)
        .cornerRadius(10)
    }
}


struct AppointmentCardView: View {
    let appointmentCard: AppointmentCard

    var body: some View {
        HStack {
            // Left side with two lines of text
            VStack(alignment: .leading) {
                Text(appointmentCard.category)
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .bold()
                Text(appointmentCard.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding()

            Spacer()

            // Right side with the red button
            RedButtonView(buttonText: "ΑΚΥΡΩΣΗ")
                .frame(width: UIScreen.main.bounds.width * 0.25)
                .padding(.trailing)
                .bold()
                .font(.footnote)
        }
        .frame(height: UIScreen.main.bounds.height / 10)
        .background(Color.white)
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

struct CardTestView: View {
    var body: some View {
        VStack {
            AppointmentCardView(appointmentCard: AppointmentCard(category: "Meeting", description: "Project sync with the team"))
            AppointmentCardView(appointmentCard: AppointmentCard(category: "Dentist", description: "Annual checkup"))
            AppointmentCardView(appointmentCard: AppointmentCard(category: "Gym", description: "Workout session"))
        }
    }
}

// Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardTestView()
    }
}
