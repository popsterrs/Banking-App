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
            Text("9002-1244-5616-6136")
        }
        .frame(height: 200)
    }
}

#Preview {
    ContentView()
}
