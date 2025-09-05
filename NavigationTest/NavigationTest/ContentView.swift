//
//  ContentView.swift
//  NavigationTest
//
//  Created by Vitor de Azambuja on 23/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Items in Stock")
                    .font(.title)
                    .padding()
                Spacer()
                NavigationLink(destination: ItemDetailView(itemName: "Labubu"), label: {Text("Labubu")})
                Spacer()
            }
            .navigationTitle(Text("Labubu Store"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
