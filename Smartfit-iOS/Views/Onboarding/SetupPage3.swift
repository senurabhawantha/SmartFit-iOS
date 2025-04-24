//
//  SetupPage3.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-24.
//
import SwiftUI

struct SetupPage3: View {
    var body: some View {
        VStack(spacing: 0) {
            // Top Bar: Progress + Skip
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

            // Title & Description
            VStack(alignment: .leading, spacing: 10) {
                Text("Emergency SOS\nAssistance")
                    .font(.title2.bold())
                    .foregroundColor(.pink)

                Text("Access emergency help instantly with a single tap. Share your real-time location with trusted contacts.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 30)
            .padding(.top, 30)

            Spacer()

            // Illustration + Next button
            ZStack(alignment: .bottomTrailing) {
                Image("welcome_illustration3") // Replace with correct image name in Assets
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 500)
                    .padding(.horizontal)

                NavigationLink(destination: SetupPage4()) {
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
    SetupPage3()
}
