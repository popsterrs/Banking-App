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
        ScrollView {
            VStack {
                TopBuffer()
                content()
            }
        }
    }
}

struct CoreBodyView_Previews: PreviewProvider {
    static var previews: some View {
        CoreBodyView {
            Text("Home Page")
        }
    }
}
