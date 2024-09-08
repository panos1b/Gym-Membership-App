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
