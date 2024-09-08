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
        Image(systemName: SButton.symbol)
            .padding(6)
    }
}
