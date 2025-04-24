//
//  SetupPage4.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-24.
//
import SwiftUI

struct SetupPage4: View {
    var body: some View {
        VStack(spacing: 0) {
            // Top bar: progress + skip
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

            // Title & subtitle
            VStack(alignment: .leading, spacing: 10) {
                Text("Emergency Medical\nAssistant")
                    .font(.title2.bold())
                    .foregroundColor(.pink)

                Text("Enable a one-press SOS button to notify emergency contacts with the user’s location instantly.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 30)
            .padding(.top, 30)

            Spacer()

            // Illustration and next button
            ZStack(alignment: .bottomTrailing) {
                Image("welcome_illustration4") // Name of your image in Assets
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 500)
                    .padding(.horizontal)

                NavigationLink(destination: SetupPage5()) {
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
    SetupPage4()
}
