//
//  BookingSelectorView.swift
//  Gym App
//
//  Created by Panos Daskalopoulos on 20/10/24.
//

import SwiftUI

struct BookingSelectorView: View {
    @State private var inputValue: String = ""
    @State private var segment: String = "Empower"
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Text("Επιλογή Υπηρεσίας")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundStyle(Color(.main))
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
                    .clipped()
                
                Spacer()
                
                VStack(spacing: 30){
                    
                    VStack{
                        
                        Text("Υπηρεσία")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundStyle(Color(.main))
                            .multilineTextAlignment(.center)
                            .clipped()
                        
                        Picker("", selection: $segment) {
                            ForEach(["Empower","TMO","Pilates"], id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        .frame(maxWidth: .infinity)
                        
                        
                    }
                    .padding(15)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 2)
                    )
                    
                    VStack{
                        
                        Text("Εύρος ημερών")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundStyle(Color(.main))
                            .multilineTextAlignment(.center)
                            .clipped()
                        
                        
                        HStack(spacing: -80) {
                            
                            
                            DatePicker("", selection: .constant(Date()), displayedComponents: [.date])
                                .datePickerStyle(.compact)
                                .fixedSize().frame(maxWidth: .infinity)
                                .tint(Color(.main))
                            
                            DatePicker("", selection: .constant(Date()), displayedComponents: [.date])
                                .datePickerStyle(.compact)
                                .fixedSize().frame(maxWidth: .infinity)
                                .tint(Color(.main))
                        }
                        
                    }
                    .padding(15)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 2)
                    )
                    
                    
                }
                .padding(.horizontal, 10)
                
                Spacer()
                
                NavigationLink(destination: BookingResultsView()){
                    Button(action: { } ) {
                        Text("Αναζήτηση")
                            .font(.system(size: 22))
                            .foregroundStyle(.supplementary)
                            .frame(width: 201, alignment: .center)
                    }
                    .buttonStyle(BorderedProminentButtonStyle())
                    .tint(.main)
                    .controlSize(.extraLarge)
                    .buttonBorderShape(.roundedRectangle(radius: 16))
                }
                
                Button(action: { } ) {
                    Text("Καθαρισμός Επιλογών")
                        .font(.system(size: 14))
                        .foregroundStyle(.blue)
                        .underline()
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .tint(.black)
                .controlSize(.extraLarge)
            }
        }
        }
    }
        


#Preview {
    
    BookingSelectorView()
}
