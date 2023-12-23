//
//  ContentView.swift
//  Banking App
//
//  Created by Jack Padbury on 23/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            GeometryReader {
                let safeArea = $0.safeAreaInsets
                let size = $0.size
                
                TabView {
                    HomePageView()
                        .ignoresSafeArea(.container, edges: .top)
                        .tabItem() {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                    PaymentsPageView()
                        .tabItem() {
                            Image(systemName: "rectangle.2.swap")
                            Text("Payments")
                        }
                    SupportPageView()
                        .tabItem() {
                            Image(systemName: "questionmark.circle")
                            Text("Support")
                        }
                    ManageCardPageView()
                        .tabItem() {
                            Image(systemName: "creditcard.fill")
                            Text("Manage Card")
                        }
                }
                .onAppear() {
                    let tabBarAppearance = UITabBarAppearance()
                    tabBarAppearance.configureWithOpaqueBackground()
                    tabBarAppearance.backgroundColor = UIColor.black
                    UITabBar.appearance().standardAppearance = tabBarAppearance
                }
                .tint(Color(UIColor.label))
            }
            .preferredColorScheme(.dark)
        }
}

#Preview {
    ContentView()
}
