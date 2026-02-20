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
                gradientStart: Color(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)),
                gradientEnd: Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
            )
            
            CustomCard(
                name: "John Doe",
                username: "@johndoe",
                iconProfession: "bolt.fill",
                profession: "Electrical Engineer",
                avatarImage: Image("Avatar2"),
                gradientStart: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),
                gradientEnd: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
            )
            
            
        }
       
    }
}

#Preview {
    ContentView()
}
