//
//  NailDetailView.swift
//  TheNailGallery
//
//  Created by M1_Tugo on 2/25/25.
//

import SwiftUI

struct NailDetailView: View {
    let selectedImage: String
    let label: String
    @State private var color = ""
    @State private var length = ""
    @State private var notes = ""
    @State private var showConfirmation = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text(label)
                .font(.custom("Papyrus", size: 18))
                .bold()
            
            Image(selectedImage)
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 350)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(radius: 5)
            
            TextField("Enter Color", text: $color)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Enter Length (e.g., Short, Medium, Long)", text: $length)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Extra Notes", text: $notes)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Submit") {
                showConfirmation = true
            }
            .padding()
            .buttonStyle(.borderedProminent)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Nail Set Details")
        .fullScreenCover(isPresented: $showConfirmation) {
            ConfirmationView()
        }
    }
}
