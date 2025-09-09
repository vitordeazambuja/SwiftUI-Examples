//
//  ContentView.swift
//  ToolbarProject
//
//  Created by Vitor de Azambuja on 09/09/25.
//

import SwiftUI

struct ContentView: View {
    @State var isPresenting: Bool = false
    
    var body: some View {
        NavigationView{
            Text("Initial View")
                .toolbar{
                    ToolbarItem(placement: .topBarLeading){
                        Button(action: { isPresenting = true }, label: {Image(systemName: "gear")})
                    }
                }
                .sheet(isPresented: $isPresenting){
                    NavigationView{
                        Text("Settings Page")
                            .toolbar{
                                ToolbarItem{
                                    Button("Save"){}
                                }
                            }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
