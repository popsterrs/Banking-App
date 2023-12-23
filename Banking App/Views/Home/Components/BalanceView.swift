//
// BalanceView.swift
// Banking App
//
// Created by popsters on 23/12/2023
//
// Copyright © 2023
// All Rights Reserved.


import SwiftUI

struct BalanceView: View {
    @State var balance: Double
    
    var body: some View {
        CardView(backgroundColor: Color(UIColor.systemBackground)) {
            HStack {
                VStack {
                    Text("Current Balance")
                        .font(.caption)
                        .bold()
                        .tint(Color(UIColor.secondaryLabel))
                        .hAlign(.leading)
                    
                    Text(formatCurrency(balance))
                        .font(.title)
                        .bold()
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                        .hAlign(.leading)
                }
                .padding()
                .hAlign(.leading)
                

                Button {
                   
                } label: {
                    Image(systemName: "bell")
                        .foregroundColor(Color(UIColor.label))
                        .font(.callout)
                }
                .frame(width: 40, height: 40)
                .background(Color(UIColor.systemRed).opacity(0.075))
                .clipShape(Circle())
                .padding()
                .hAlign(.trailing)
            }
        }
    }
}

#Preview {
    ContentView()
}
