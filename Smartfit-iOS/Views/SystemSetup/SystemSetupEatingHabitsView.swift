//
//  SystemSetupEatingHabitsView.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-24.
//
import SwiftUI

struct SystemSetupEatingHabitsView: View {
    @State private var selectedHabit: String = ""

    let habits = [
        ("Balanced Diet", Color.green),
        ("Mostly Vegetarian", Color.red),
        ("Low Carb", Color.cyan),
        ("Gluten Free", Color.green.opacity(0.7))
    ]

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
            Text("What is your usual\neating habits?")
                .font(.title2.bold())
                .foregroundColor(.pink)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)

            // Grid
            LazyVGrid(columns: [GridItem(), GridItem()], spacing: 20) {
                ForEach(habits, id: \.0) { (title, color) in
                    Button(action: {
                        selectedHabit = title
                    }) {
                        Text(title)
                            .font(.subheadline)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, minHeight: 80)
                            .padding()
                            .background(selectedHabit == title ? color.opacity(0.9) : color.opacity(0.3))
                            .foregroundColor(.black)
                            .cornerRadius(15)
                    }
                }
            }
            .padding(.horizontal)

            Spacer()

            // Continue button
            NavigationLink(destination: SystemSetupMedicationView()) {
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
#Preview {
    SystemSetupEatingHabitsView()
}
