//
//  ForgotPasswordView.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-24.
//
import SwiftUI

struct ForgotPasswordView: View {
    @State private var email = ""

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.pink.opacity(0.8), Color.red.opacity(0.7)]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                            .ignoresSafeArea()
                        
                        VStack(spacing: 30) {
                            Spacer()

                Image("heart")
                    .resizable()
                    .frame(width: 250, height: 275)
                    .clipShape(Circle())
                    .shadow(radius: 8)

                Text("Forgot Password?")
                    .font(.title.bold())
                    .foregroundColor(.white)

                Text("Don't worry! Please enter the email address linked with your account.")
                    .font(.caption)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.horizontal)

                CustomInputField(icon: "envelope", placeholder: "Email Address", text: $email)

                            // Send Code Button → Navigates to OTP screen
                            NavigationLink(destination: OTPVerificationView()) {
                                Text("Send Code")
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.black)
                                    .cornerRadius(25)
                            }
                            .padding(.horizontal, 40)

                            Spacer()


                HStack {
                    Text("Remember Password?")
                    NavigationLink("Login", destination: SignInView())
                        .foregroundColor(.white)
                }
                .font(.footnote)
            }
            .padding()
        }
    }
}

#Preview {
    ForgotPasswordView()
}
