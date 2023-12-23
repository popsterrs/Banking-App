//
// HomePageView.swift
// Banking App
//
// Created by popsters on 23/12/2023
//
// Copyright © 2023
// All Rights Reserved.


import SwiftUI

struct HomePageView: View {
    let balance: Double = 30279.25
    
    var body: some View {
        CoreBodyView {
            BalanceView(balance: balance)
            
            Spacer()
                .frame(height: 25)
            
            BankCardView()
            
            Spacer()
                .frame(height: 25)
            
            TransactionView()
        }
    }
}


#Preview {
    ContentView()
}
