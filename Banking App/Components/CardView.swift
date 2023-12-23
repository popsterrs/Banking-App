//
// CardView.swift
// Banking App
//
// Created by popsters on 23/12/2023
//
// Copyright © 2023
// All Rights Reserved.


import SwiftUI

struct CardView<Content: View>: View {
    let content: () -> Content
    let backgroundColor: Color

    init(backgroundColor: Color, @ViewBuilder content: @escaping () -> Content) {
        self.backgroundColor = backgroundColor
        self.content = content
    }

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(backgroundColor)
            VStack {
                content()
            }
        }
    }
}
