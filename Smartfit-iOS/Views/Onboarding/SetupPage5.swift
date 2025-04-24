//
//  SetupPage5.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-24.
//
import SwiftUI

struct SetupPage5: View {
    var body: some View {
        VStack(spacing: 0) {
            // Progress bar and Skip
            HStack {
                ProgressView(value: 1.0)
                    .progressViewStyle(LinearProgressViewStyle(tint: Color.pink))
                    .frame(width: 120)

                Spacer()

                NavigationLink("Skip", destination: LoginChoiceView())
                    .foregroundColor(.gray)
                    .font(.subheadline)
            }
            .padding(.horizontal)
            .padding(.top, 50)

            // Title and subtitle
            VStack(alignment: .leading, spacing: 10) {
                Text("Push Notifications &\nSmart Reminders")
                    .font(.title2.bold())
                    .foregroundColor(.pink)

                Text("Deliver alerts for exercise schedules, weather warnings, and health updates, plus motivational messages.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 30)
            .padding(.top, 30)

            Spacer()

            // Illustration with next button
            ZStack(alignment: .bottomTrailing) {
                Image("welcome_illustration5") // Add to Assets
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 500)
                    .padding(.horizontal)

                NavigationLink(destination: LoginChoiceView()) {
                    Image(systemName: "chevron.right")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .frame(width: 50, height: 50)
                        .background(Color.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                        .shadow(radius: 4)
                }
                .padding(.bottom, 10)
                .padding(.trailing, 20)
            }
        }
        .background(Color.white)
        .ignoresSafeArea()
    }
}
#Preview {
    SetupPage5()
}
