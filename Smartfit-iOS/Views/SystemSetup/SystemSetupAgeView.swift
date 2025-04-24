//
//  SystemSetupAgeView.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-24.
//
import SwiftUI

struct SystemSetupAgeView: View {
    @State private var selectedAge: Int = 19

    var body: some View {
        VStack(spacing: 30) {
            // Top navigation
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
            Text("What is your age?")
                .font(.title2.bold())
                .foregroundColor(.pink)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)

            // Picker Wheel
            Picker(selection: $selectedAge, label: Text("")) {
                ForEach(10..<100) { age in
                    Text("\(age)")
                        .font(.system(size: age == selectedAge ? 40 : 22, weight: age == selectedAge ? .bold : .regular))
                        .foregroundColor(age == selectedAge ? .white : .gray)
                        .frame(height: 60)
                        .background(age == selectedAge ? Color.pink : Color.clear)
                        .cornerRadius(15)
                        .padding(.horizontal, age == selectedAge ? 20 : 0)
                }
            }
            .labelsHidden()
            .frame(height: 200)
            .clipped()

            Spacer()

            // Continue button
            NavigationLink(destination: SystemSetupBloodTypeView()) {
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
    SystemSetupAgeView()
}
