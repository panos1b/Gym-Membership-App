//
//  TopBar.swift
//  Gym App
//
//  Created by Panos Daskalopoulos on 19/10/24.
//


import SwiftUI

struct TopBar: View {
    var title: String
    
    var body: some View {
        VStack{
            ZStack(alignment: .topLeading) {
                    Text(title)
                        .font(.title)
                        .foregroundColor(.black)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                    
            }
            .frame(maxWidth: .infinity, maxHeight: 80, alignment: .top)
            .padding(.horizontal, 30)
            .offset(x: 0, y: 15)
            .background(Color("MainColor").ignoresSafeArea().offset(x: 0, y: -30))
            .foregroundColor(.white)
            
            Spacer()
        }
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar(title: "Title Text")
    }
}
