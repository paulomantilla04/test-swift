//
//  CustomButton.swift
//  testProject
//
//  Created by Paulo Mantilla on 17/02/26.
//
import SwiftUI

struct CustomButton: View {
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .padding()
                .background(color)
                .fontWeight(.bold)
                .cornerRadius(10)
        }
    }
}
