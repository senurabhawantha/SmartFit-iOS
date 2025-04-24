//
//  SystemSetupBloodTypeView.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-24.
//
import SwiftUI

struct SystemSetupBloodTypeView: View {
    @State private var selectedGroup: String = "A"
    @State private var selectedSign: String = "+"

    let bloodGroups = ["A", "B", "AB", "O"]
    let signs = ["+", "-"]

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
            Text("What’s your official\nblood type?")
                .font(.title2.bold())
                .foregroundColor(.pink)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)

            // Blood group selection
            HStack(spacing: 15) {
                ForEach(bloodGroups, id: \.self) { group in
                    Button(action: { selectedGroup = group }) {
                        Text(group)
                            .padding()
                            .frame(minWidth: 50)
                            .background(selectedGroup == group ? Color.blue : Color.gray.opacity(0.2))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            }

            // Result Display
            Text("\(selectedGroup)\(selectedSign)")
                .font(.system(size: 60, weight: .bold))
                .foregroundColor(.blue)

            // Sign selector
            HStack(spacing: 15) {
                ForEach(signs, id: \.self) { sign in
                    Button(action: { selectedSign = sign }) {
                        Text(sign)
                            .font(.title)
                            .frame(width: 60, height: 40)
                            .background(selectedSign == sign ? Color.pink : Color.gray.opacity(0.2))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            }

            Spacer()

            // Continue
            NavigationLink(destination: SystemSetupFitnessLevelView()) {
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

