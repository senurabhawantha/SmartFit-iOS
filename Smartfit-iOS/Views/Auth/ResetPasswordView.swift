//
//  ResetPasswordView.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-24.
//
import SwiftUI

struct ResetPasswordView: View {
    @State private var password = ""
    @State private var confirmPassword = ""

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

                Text("Create New Password")
                    .font(.title.bold())
                    .foregroundColor(.white)

                Text("Your new password must be unique from those previously used.")
                    .font(.caption)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                CustomSecureField(icon: "lock", placeholder: "Password", text: $password)
                CustomSecureField(icon: "lock", placeholder: "Password Confirmation", text: $confirmPassword)

                            // Reset Password Button → Navigates to ResetPasswordView
                            NavigationLink(destination: SignInView()) {
                                Text("Reset Password")
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.black)
                                    .cornerRadius(25)
                            }
                            .padding(.horizontal, 40)

                            Spacer()

            }
            .padding()
        }
    }
}
#Preview {
    ResetPasswordView()
}
