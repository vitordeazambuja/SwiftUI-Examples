//
//  ContentView.swift
//  TabViewProject
//
//  Created by Vitor de Azambuja on 17/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Text("Home View")
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            Text("Profile View")
                .tabItem{
                    Label("Profile", systemImage: "person.circle.fill")
                }
        }
        // remover para mostrar ícones
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    ContentView()
}
