//
//  CustomCard.swift
//  testProject
//
//  Created by Paulo Mantilla on 18/02/26.
//
import SwiftUI


struct CustomCard: View {
    
    let name: String
    let username: String
    let iconProfession: String
    let profession: String
    let avatarImage: Image?
    let avatarBackgroundRed: Double
    let avatarBackgroundGreen: Double
    let avatarBackgroundBlue: Double
    
    init(
        name: String,
        username: String,
        iconProfession: String,
        profession: String,
        avatarImage: Image? = nil,
        avatarBackgroundRed: Double = 89,
        avatarBackgroundGreen: Double = 165,
        avatarBackgroundBlue: Double = 247
    ) {
        self.name = name
        self.username = username
        self.iconProfession = iconProfession
        self.profession = profession
        self.avatarImage = avatarImage
        self.avatarBackgroundRed = avatarBackgroundRed
        self.avatarBackgroundGreen = avatarBackgroundGreen
        self.avatarBackgroundBlue = avatarBackgroundBlue
    }
    
    var body: some View {
        VStack(alignment: .center){
            HStack (spacing: 20) {
                ZStack {
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(Color(red: avatarBackgroundRed/255, green: avatarBackgroundGreen/255, blue: avatarBackgroundBlue/255))
                    
                    Group {
                        if let avatarImage {
                            avatarImage
                                .resizable()
                                .scaledToFit()
                        } else {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .symbolRenderingMode(.hierarchical)
                                .foregroundStyle(.blue)
                        }
                    }
                    .padding(12)
                }
                .frame(width: 96, height: 96)
                .padding(.leading)
                VStack (alignment: .leading){
                    Text(name)
                        .font(Font.system(size: 20, weight: .bold, design: .default))
                    Text(username)
                        .font(Font.system(size: 14, weight: .regular, design: .default))
                    HStack(spacing: 6) {
                        Image(systemName: iconProfession)
                            .font(.system(size: 10, weight: .semibold))
                        Text(profession)
                            .font(.system(size: 12, weight: .medium))
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 6)
                    .background(Capsule().fill(Color.white.opacity(1)))
                    .overlay(Capsule().stroke(Color.black, lineWidth: 1))
                    .foregroundStyle(.black)
                    
                    
                }
                
            }
            
            
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 30)
        .background(Color(red: 252/255, green: 252/255, blue: 252/255))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: .black.opacity(0.2), radius: 20, y: 18)
    }
}

