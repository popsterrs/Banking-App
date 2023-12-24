//
// ManageCardPageView.swift
// Banking App
//
// Created by popsters on 23/12/2023
//
// Copyright © 2023
// All Rights Reserved.


import SwiftUI

struct ManageCardPageView: View {
    var body: some View {
        CoreBodyView {
            Text("Card Details")
                .font(.title)
            Text("View Pin")
            Text("View card details")
            
            Text("Card Controls")
                .font(.title)
            Text("Card freezes and limits")
            Text("Replace card & pin")
            
            Text("Spending Options")
                .font(.title)
            Text("Apple pay")
            Text("Click to pay")
            
            Text("remove when complete, just here to make sure the tabview bottom bar isnt transparent")
                .padding(.vertical, 10000)
        }
    }
}

#Preview {
    ContentView()
}
