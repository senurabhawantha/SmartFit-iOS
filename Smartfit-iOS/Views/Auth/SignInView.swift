//
//  SignInView.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-23.
//
import SwiftUI

struct SignInView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        ZStack {
            // Background
            LinearGradient(gradient: Gradient(colors: [Color.pink.opacity(0.8), Color.red.opacity(0.7)]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                            .ignoresSafeArea()
                        
                        VStack(spacing: 30) {
                            Spacer()
                // Logo
                Image("heart")
                    .resizable()
                    .frame(width: 200, height: 225)
                    .clipShape(Circle())
                    .shadow(radius: 10)

                // Title
                Text("Sign In")
                    .font(.title.bold())
                    .foregroundColor(.white)

                // Input Fields
                CustomInputField(icon: "envelope", placeholder: "Email Address", text: $email)
                CustomSecureField(icon: "lock", placeholder: "Password", text: $password)

                // Forgot Password
                HStack {
                    Spacer()
                    Button("Forgot Password?") {
                        // Add logic
                    }
                    .font(.caption)
                    .foregroundColor(.pink)
                    .padding(.trailing, 40)
                }

                // Sign In Button
                Button(action: {
                    print("Sign In pressed")
                }) {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.pink)
                        .cornerRadius(25)
                }
                .padding(.horizontal, 40)

                // OR Divider
                Text("OR")
                    .font(.caption)
                    .foregroundColor(.gray)

                // Social Media Icons
                HStack(spacing: 20) {
                    ForEach(["google", "facebook", "apple"], id: \.self) { name in
                        Image(name)
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding()
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(radius: 2)
                    }
                }

                // Sign Up Text
                HStack {
                    Text("Don't have an account?")
                    NavigationLink("Sign Up", destination: SignUpView())
                        .foregroundColor(.pink)
                }
                .font(.footnote)

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    SignInView()
}
