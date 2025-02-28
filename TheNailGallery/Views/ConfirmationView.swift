//
//  ConfirmationView.swift
//  TheNailGallery
//
//  Created by M1_Tugo on 2/25/25.
//

import SwiftUI

struct ConfirmationView: View {
    var body: some View {
        VStack {
            Text("Idea Sent to Artist!")
                .font(.custom("Papyrus", size: 35))
                .fontWeight(.bold)
                .padding()
            
            Image("confirmationPic")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 250)
                .padding(.top, 40)
            
            Text("Call the number below to book an appointment so we can bring your design to life.")
                .font(.custom("Papyrus", size: 15))                .multilineTextAlignment(.center)
                .padding()
            
            Text("(123) 456-7890")
                .font(.custom("Papyrus", size: 18))                .foregroundColor(.black)
                .padding()
            Text("Any further questions please email:")
                .font(.custom("Papyrus", size: 16))                .foregroundColor(.black)
            Text("thenailgalleryinq@gmail.com")
                .font(.custom("Papyrus", size: 20))                .foregroundColor(.black)
                .padding()
            
            Spacer()
            
            Button("Back to Home") {
                UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: true)
            }
            .padding()
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Booking Info")
    }
}
