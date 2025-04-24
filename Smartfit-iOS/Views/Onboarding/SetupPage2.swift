//
//  SetupPage2.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-24.
//
import SwiftUI

struct SetupPage2: View {
    var body: some View {
        VStack {
            // Top: Progress & Skip
            HStack {
                ProgressView(value: 0.66)
                    .progressViewStyle(LinearProgressViewStyle(tint: Color.pink))
                    .frame(width: 150)

                Spacer()

                NavigationLink("Skip", destination: LoginChoiceView())
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            .padding(.top, 30)

            Spacer()

            // Title
            VStack(alignment: .leading, spacing: 10) {
                Text("Weather-Based\nWorkout Guidance")
                    .font(.title2.bold())
                    .foregroundColor(.pink)
                
                // Description
                Text("Provide real-time weather updates, suggesting optimal workout times and locations.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
//                    .multilineTextAlignment(.center)
//                    .padding(.horizontal, 40)
//                    .padding(.top, 10)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 30)
            .padding(.top, 30)
                
            Spacer()

            // Illustration
            Image("welcome_illustration2") // add this in Assets
                .resizable()
                .scaledToFit()
                .frame(height: 500)

            Spacer()

            // Next Button
            HStack {
                Spacer()
                NavigationLink(destination: SetupPage3()) {
                    Image(systemName: "chevron.right")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(.white)
                        .frame(width: 48, height: 48)
                        .background(Color.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }
                .padding()
            }
        }
    }
}
#Preview {
    SetupPage2()
}

