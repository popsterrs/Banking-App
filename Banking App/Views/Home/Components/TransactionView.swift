//
// TransactionView.swift
// Banking App
//
// Created by popsters on 23/12/2023
//
// Copyright © 2023
// All Rights Reserved.


import SwiftUI

struct TransactionView: View {
    var body: some View {
        CardView(backgroundColor: Color(UIColor.systemBackground)) {
            Text("Transactions")
                .font(.title3)
                .bold()
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
                .hAlign(.leading)
            
            ForEach(0..<15, id: \.self) { index in
                Transaction(transactionDetails: TransactionDetails(name: getRandomName(), date: getRandomDate(), ammount: getRandomNumber()))
            }
            
            Spacer()
                .frame(height: 75)

        }
    }
}

#Preview {
    ContentView()
}
