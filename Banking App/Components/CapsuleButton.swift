//
// CapsuleButton.swift
// Banking App
//
// Created by popsters on 23/12/2023
//
// Copyright © 2023
// All Rights Reserved.


import SwiftUI

struct CapsuleButton: View {
    let label: String
    let color: Color
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(label)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(color)
                .cornerRadius(15)
        }
    }
}
