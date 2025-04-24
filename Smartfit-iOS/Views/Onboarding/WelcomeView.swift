//
//  WelcomeView.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-24.
//
import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack(spacing: 30) {
            Spacer()

            // Title
            Text("Welcome to\nSmart Fit")
                .font(.largeTitle.bold())
                .foregroundColor(.pink)
                .multilineTextAlignment(.center)

            // Illustration
            Image("welcome_illustration") // Add this image to Assets.xcassets
                .resizable()
                .scaledToFit()
                .frame(height: 400)

            // Get Started Button
            NavigationLink(destination: SetupPage1()) {
                Text("Get Started")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.pink)
                    .cornerRadius(20)
            }
            .padding(.horizontal, 40)


            Spacer()
        }
        .padding()
    }
}
#Preview {
    WelcomeView()
}
