//
//  LCardView.swift
//  Gym App
//
//  Created by Panos Daskalopoulos on 19/10/24.
//
import SwiftUI

struct LCard {
    var category: String
    var description: String
    var termination: String
}

struct LCardView: View {
    let lCard: LCard

    var body: some View {
        HStack {
            // Left side with two lines of text
            VStack(alignment: .leading) {
                Text(lCard.category)
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .bold()
                    .background(Color.yellow)
                Text(lCard.description)
                    .font(.title2)
                    .foregroundColor(.black)
                    .bold()
                Divider()
                Text("Λήγει στις " + lCard.termination)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
            }
            .padding()
            Spacer()
        }
        .frame(height: UIScreen.main.bounds.height / 9)
        .background(Color.white)
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

struct LCardTestView: View {
    var body: some View {
        VStack {
            LCardView(lCard: LCard(category: "Meeting", description: "Project sync with the team", termination:
                                     "17-10-2024"))
            LCardView(lCard: LCard(category: "Dentist", description: "Annual checkup", termination:
                                     "17-10-2024"))
            LCardView(lCard: LCard(category: "Gym", description: "Workout session", termination:
                                     "17-10-2024"))
        }
    }
}

// Preview
struct LCardView_Previews: PreviewProvider {
    static var previews: some View {
        LCardTestView()
    }
}
