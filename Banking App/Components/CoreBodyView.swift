//
// CoreBodyView.swift
// Banking App
//
// Created by popsters on 23/12/2023
//
// Copyright © 2023
// All Rights Reserved.


import SwiftUI

struct CoreBodyView<Content: View>: View {
    let content: () -> Content

    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }

    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    TopBuffer()
                    content()
                }
                .padding()
                .frame(width: geometry.size.width)
            }
            .background(Color(UIColor.systemRed).opacity(0.075))
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ContentView()
}
