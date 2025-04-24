//
//  SystemSetupFitnessLevelView.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-24.
//
import SwiftUI

struct SystemSetupFitnessLevelView: View {
    @State private var selectedLevel: Int = 3

    var body: some View {
        VStack(spacing: 30) {
            // Top nav
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
            Text("What is your current\nfitness level?")
                .font(.title2.bold())
                .foregroundColor(.pink)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)

            // Illustration
            Image("fitness_level") // Add to Assets
                .resizable()
                .scaledToFit()
                .frame(height: 200)

            // Level slider
            VStack {
                HStack {
                    Text("Level \(selectedLevel)")
                        .font(.headline)
                        .foregroundColor(.black)
                    Spacer()
                    Text("(\(fitnessLabel(for: selectedLevel)))")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.horizontal, 30)

                Slider(value: Binding(get: {
                    Double(selectedLevel)
                }, set: { newValue in
                    selectedLevel = Int(newValue)
                }), in: 1...5, step: 1)
                .padding(.horizontal, 30)
            }

            Spacer()

            // Continue button
            NavigationLink(destination: SystemSetupEatingHabitsView()) {
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

    func fitnessLabel(for level: Int) -> String {
        switch level {
        case 1: return "Rarely Active"
        case 2: return "Light Activity"
        case 3: return "2–3x Exercise/Week"
        case 4: return "Regular Training"
        case 5: return "Athlete Level"
        default: return ""
        }
    }
}
#Preview {
    SystemSetupFitnessLevelView()
}
