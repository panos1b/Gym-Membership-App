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
        VStack {
            VStack {
                AppointmentCardView(AppointmentCard: AppointmentCard(category: "person"))
               
            }
            .toolbar {
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

struct AppointmentCard {
    var category: String
}

struct AppointmentCardView: View {
    let AppointmentCard : AppointmentCard
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}



#Preview {
    AppointmentView()
}
