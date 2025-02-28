//
//  ContentView.swift
//  TheNailGallery
//
//  Created by M1_Tugo on 2/25/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showGallery = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                Image("welcomePic")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding(.top, 50)
                
                Text("Welcome to the Nail Gallery Salon!")
                    .font(.custom("Papyrus", size: 26))
                    .fontWeight(.bold)
                    .padding(.top, 30)
                Text("Heres how it works..")
                    .font(.custom("Papyrus", size: 20))                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding([.top, .horizontal], 10)
                Text("❀ Browse through the different nail options and select the set you like.")
                    .font(.custom("Papyrus", size: 16))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding([.top, .horizontal], 10)
                Text("❀ Enter the details of your dream set and submit it to the in-house artist")
                    .font(.custom("Papyrus", size: 16))                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding([.top, .horizontal], 10)
                Text("❀ Call the given number for our salon address (address is not provided here to maintain an exclusive feel)")
                    .font(.custom("Papyrus", size: 16))                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding([.top, .horizontal], 10)
                Spacer()
                
                Button("Choose Set") {
                    showGallery = true
                }
                .padding()
                .buttonStyle(.borderedProminent)
                .font(.title2)
                .padding(.bottom, 40)
            }
            .sheet(isPresented: $showGallery) {
                NailGalleryView()
                
                Spacer()
            }
        }
    }
}
