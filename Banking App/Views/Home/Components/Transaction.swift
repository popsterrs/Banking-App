//
// Transaction.swift
// Banking App
//
// Created by popsters on 23/12/2023
//
// Copyright © 2023
// All Rights Reserved.


import SwiftUI

struct Transaction: View {
    @State var transactionDetails: TransactionDetails
    
    var body: some View {
        HStack {
            HStack {
                Button {
                   
                } label: {
                    Text(formatNameToInitials(name: transactionDetails.name))
                }
                .frame(width: 40, height: 40)
                .background(getRandomColor().opacity(0.15))
                .clipShape(Circle())
                .padding()
                .hAlign(.leading)
          
                VStack {
                    Text(transactionDetails.name)
                        .bold()
                        .truncationMode(.tail)
                        .hAlign(.leading)
                    Text(formatDate(date: transactionDetails.date))
                        .font(.caption2)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                        .hAlign(.leading)
                }
                .frame(width: 200)
                .padding(.horizontal, -10)
                .hAlign(.leading)
            }
            
            Text(formatCurrency(transactionDetails.ammount))
                .bold()
                .frame(width: 100, alignment: .trailing) // Use alignment parameter in .frame()
                .multilineTextAlignment(.trailing)
                .lineLimit(1)
        }
        .padding(.vertical, -10)
        .padding(.horizontal)
    }
}

#Preview {
    ContentView()
}
