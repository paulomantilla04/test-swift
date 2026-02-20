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
    let gradientStart: Color
    let gradientEnd: Color
    @State private var isAppearing = false
    
    init(
        name: String,
        username: String,
        iconProfession: String,
        profession: String,
        avatarImage: Image? = nil,
        gradientStart: Color = Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)),
        gradientEnd: Color = Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
    ) {
        self.name = name
        self.username = username
        self.iconProfession = iconProfession
        self.profession = profession
        self.avatarImage = avatarImage
        self.gradientStart = gradientStart
        self.gradientEnd = gradientEnd
    }
    
    var body: some View {
        VStack(alignment: .center){
            HStack (spacing: 20) {
                ZStack {
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(LinearGradient(colors: [gradientStart, gradientEnd], startPoint: .topLeading, endPoint: .bottom))
                    
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
        // Estado inical
        .opacity(isAppearing ? 1 : 0)
        .offset(y: isAppearing ? 0 : 20)
        // Trigger
        .onAppear {
            withAnimation(.easeInOut(duration: 0.6).delay(0.2)){
                isAppearing = true
            }
        }
        
        
    }
}

#Preview {
    CustomCard(
        name: "Paulo Mantilla",
        username: "@paulomanher",
        iconProfession: "laptopcomputer",
        profession: "Software Engineer",
        avatarImage: Image("Avatar"),
        gradientStart: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)),
        gradientEnd: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
    )
}

