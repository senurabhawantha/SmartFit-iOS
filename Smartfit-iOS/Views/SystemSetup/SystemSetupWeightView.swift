//
//  SystemSetupWeightView.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-24.
//
import SwiftUI

struct SystemSetupWeightView: View {
    @State private var selectedUnit: String = "lbs"
    @State private var weight: Double = 140

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
                Text("What is your weight?")
                    .font(.title2.bold())
                    .foregroundColor(.pink)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)

            // Unit toggle
            HStack(spacing: 20) {
                Button(action: { selectedUnit = "lbs" }) {
                    Text("lbs")
                        .padding(.vertical, 8)
                        .padding(.horizontal, 20)
                        .background(selectedUnit == "lbs" ? Color.blue : Color.gray.opacity(0.2))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                Button(action: { selectedUnit = "kg" }) {
                    Text("kg")
                        .padding(.vertical, 8)
                        .padding(.horizontal, 20)
                        .background(selectedUnit == "kg" ? Color.blue : Color.gray.opacity(0.2))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }

            // Value Display
            Text("\(Int(weight)) \(selectedUnit)")
                .font(.largeTitle.bold())
                .foregroundColor(.black)

            // Weight Picker
            Slider(value: $weight, in: 80...300, step: 1)
                .padding(.horizontal, 30)

            Spacer()

            // Continue
            NavigationLink(destination: SystemSetupAgeView()) {
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

