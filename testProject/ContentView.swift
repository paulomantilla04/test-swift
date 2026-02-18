//
//  ContentView.swift
//  testProject
//
//  Created by Paulo Mantilla on 17/02/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack (spacing: 40){
            CustomCard(
                name: "Paulo Mantilla",
                username: "@paulomanher",
                iconProfession: "laptopcomputer",
                profession: "Software Engineer",
                avatarImage: Image("Avatar"),
                avatarBackgroundRed: 112,
                avatarBackgroundGreen: 212,
                avatarBackgroundBlue: 113
            )
            
            CustomCard(
                name: "John Doe",
                username: "@johndoe",
                iconProfession: "bolt.fill",
                profession: "Electrical Engineer",
                avatarImage: Image("Avatar2"),
                avatarBackgroundRed: 212,
                avatarBackgroundGreen: 112,
                avatarBackgroundBlue: 164
            )
            
            
        }
       
    }
}

#Preview {
    ContentView()
}
