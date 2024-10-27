//
//  ButtonView.swift
//  Gym App
//
//  Created by Panos Daskalopoulos on 8/9/24.
//

import SwiftUI

// Define BigButton struct
struct BigButton {
    var ammount: String
    var tittle: String
    var size: Double
}

// Define SButton struct
struct SButton {
    var symbol: String
    var enabled: Bool
}

// Define BigButtonView
struct BigButtonView: View {
    let BigButton: BigButton
    var body: some View {
        VStack {
            Button(action: {
                // Action for BigButton
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

// Define SButtonView
struct SButtonView: View {
    let SButton: SButton
    var body: some View {
        if SButton.enabled{
            Image(systemName: SButton.symbol)
                .padding(6)
                .foregroundColor(Color("MainColor"))
                .background(Color(.white).opacity(0.15).clipShape(RoundedRectangle(cornerRadius: 8)).scaleEffect(1.2))
                .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                .scaleEffect(1.3)
        } else {
            Image(systemName: SButton.symbol)
                .padding(6)
                .scaleEffect(1.3)
        }
    }
}
