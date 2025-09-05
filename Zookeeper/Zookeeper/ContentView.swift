//
//  ContentView.swift
//  Zookeeper
//
//  Created by Vitor de Azambuja on 02/09/25.
//

import SwiftUI

struct ContentView: View {
    
    let animalGroups = [
        AnimalGroup(groupName: "Pets", animals: [
            Animal(name: "Dog"),
            Animal(name: "Cat"),
            Animal(name: "Parrot"),
            Animal(name: "Mouse")
        ]),
        AnimalGroup(groupName: "Farm", animals: [
            Animal(name: "Cow"),
            Animal(name: "Horse"),
            Animal(name: "Goat"),
            Animal(name: "Sheep"),
        ]),
        AnimalGroup(groupName: "Critters", animals: [
            Animal(name: "Firefly"),
            Animal(name: "Spider"),
            Animal(name: "Ant"),
            Animal(name: "Squirrel"),
        ])
    ]
    
    var body: some View {
        VStack{
            List{
                ForEach(animalGroups){
                    animalGroup in Section(header: Text(animalGroup.groupName)){
                        ForEach(animalGroup.animals){
                            animal in Text(animal.name)
                        }
                    }
                }
            }
        }
        
    }
}


struct Animal: Identifiable{
    var id = UUID()
    var name: String
}

struct AnimalGroup: Identifiable{
    var id = UUID()
    var groupName: String
    var animals: [Animal]
}

#Preview {
    ContentView()
}
