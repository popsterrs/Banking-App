//
// BankCardView.swift
// Banking App
//
// Created by popsters on 23/12/2023
//
// Copyright © 2023
// All Rights Reserved.


import SwiftUI

struct BankCardView: View {
    var body: some View {
        CardView(backgroundColor: Color(UIColor.label)) {
            ZStack {
                Text("SAPHIRE")
                    .foregroundColor(Color(UIColor.systemBackground))
                    .font(.title2)
                    .bold()
                    .padding()
                    .vAlign(.topLeading)
                    .hAlign(.leading)
                
                Text("9002-1244-5616-6136")
                    .bold()
                    .foregroundColor(Color(UIColor.systemBackground))
                    .padding()
                    .vAlign(.bottomLeading)
                    .hAlign(.leading)
                
                AsyncImage(url: URL(string: "https://download.logo.wine/logo/Mastercard/Mastercard-Logo.wine.png")) { phase in
                    switch phase {
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 96, height: 96)
                    default:
                        Image(systemName: "photo") // Placeholder image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 96, height: 96)
                    }
                }
                .padding(.vertical, -15)
                .padding(.horizontal, 10)
                .vAlign(.bottomLeading)
                .hAlign(.trailing)
            }

        }
        .frame(height: 200)
    }
}

#Preview {
    ContentView()
}
