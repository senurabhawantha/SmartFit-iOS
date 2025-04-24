//
//  SystemSetupGenderView.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-24.
//

import SwiftUI

struct SystemSetupGenderView: View {
    @State private var selectedGender: String? = nil

    var body: some View {
        VStack(spacing: 30) {
            // Top bar
            HStack {
                Image(systemName: "chevron.left")
                    .font(.title3)
                Spacer()
                Image(systemName: "ellipsis")
                    .font(.title3)
            }
            .padding(.horizontal)
            .padding(.top, 40)

            // Title
            VStack(alignment: .leading, spacing: 5) {
                Text("What is your Gender?")
                    .font(.title2.bold())
                    .foregroundColor(.pink)
                    .frame(maxWidth: .infinity, alignment: .leading)

                Text("Please select your gender for better personalized health experience.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)

            // Gender Card Selector
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    GenderCard(title: "I Am Male", imageName: "male_workout", isSelected: selectedGender == "Male")
                        .onTapGesture { selectedGender = "Male" }

                    GenderCard(title: "I Am Female", imageName: "female_workout", isSelected: selectedGender == "Female")
                        .onTapGesture { selectedGender = "Female" }
                }
                .padding(.horizontal)
            }

            Spacer()

            // Continue Button
            NavigationLink(destination: SystemSetupWeightView()) {
                Text("Continue")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.pink)
                    .cornerRadius(15)
            }
            .padding(.horizontal, 40)
            .padding(.bottom, 20)
        }
    }
}

struct GenderCard: View {
    var title: String
    var imageName: String
    var isSelected: Bool

    var body: some View {
        VStack(spacing: 10) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)

            HStack {
                Text(title)
                    .font(.subheadline)
                    .foregroundColor(.white)
                if isSelected {
                    Image(systemName: "checkmark.square.fill")
                        .foregroundColor(.white)
                }
            }
            .padding(.bottom, 10)
        }
        .frame(width: 160)
        .background(isSelected ? Color.blue : Color.pink.opacity(0.4))
        .cornerRadius(20)
        .shadow(radius: 4)
    }
}
#Preview{
    SystemSetupGenderView()
}
