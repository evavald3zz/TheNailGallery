//
//  NailGalleryView.swift
//  TheNailGallery
//
//  Created by M1_Tugo on 2/25/25.
//

import SwiftUI

struct NailImage: Identifiable {
    let id = UUID()
    let name: String
    let label: String
}

struct NailGalleryView: View {
    
    let nailImages = [
        NailImage(name: "nail1", label: "French Tip Variation"),
        NailImage(name: "nail2", label: "Solid Color Variation"),
        NailImage(name: "nail3", label: "Design Variation"),
        NailImage(name: "nail4", label: "Freestyle (give details of what you have in mind and let artist decide what to give you")
    ]
    
    @State private var selectedImage: NailImage?
    @State private var soakOffNeeded = false
    
    var body: some View {
        VStack {
            Spacer()
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    ForEach(nailImages) { image in
                        Button(action: {
                            selectedImage = image
                        }) {
                            VStack {
                                Image(image.name)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 130, height: 250)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .shadow(radius: 5)
                                Text(image.label)
                                    .font(.caption)
                                    .foregroundColor(.black)
                                    .padding(.top, 10)
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding()
            
            Toggle("Soak Off Needed?", isOn: $soakOffNeeded)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.2)))
                .padding(.horizontal, 30)
            
            if soakOffNeeded {
                Text("Soak off will be required for this set.")
                    .foregroundColor(.pink)
                    .font(.footnote)
                    .padding(.bottom, 10)
            }
        }
        .navigationTitle("Select Your Set")
        .sheet(item: $selectedImage) { image in
            NailDetailView(selectedImage: image.name, label: image.label)
        }
    }
}
