//
//  OnboardingView.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-23.
//
import SwiftUI

struct OnboardingView: View {
    var body: some View {
        ZStack {
            // Background Gradient
            LinearGradient(gradient: Gradient(colors: [Color.pink.opacity(0.8), Color.red.opacity(0.7)]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                            .ignoresSafeArea()
                        
                        VStack(spacing: 30) {
                            Spacer()
                
                // Logo
                Image("heart") // make sure your logo is in Assets.xcassets
                    .resizable()
                    .frame(width: 250, height: 275)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                
                // App Title
                Text("Smart Fit")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                
                // Subtitle
                Text("FIND OUT EXACTLY WHAT DIET & TRAINING WILL WORK SPECIFICALLY FOR YOU")
                    .font(.caption)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white.opacity(0.9))
                    .padding(.horizontal)

                Spacer()

                // Get Started Button
                NavigationLink(destination: LoginChoiceView()) {
                    Text("Get Started")
                        .foregroundColor(.black)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(30)
                        .padding(.horizontal, 40)
                        .shadow(radius: 3)
                }

                Spacer()
            }
        }
    }
}
#Preview {
    OnboardingView()
}
