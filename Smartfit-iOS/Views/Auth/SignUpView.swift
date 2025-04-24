//
//  SignUpView.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-23.
//
import SwiftUI

struct SignUpView: View {
    @State private var username = ""
    @State private var email = ""
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
                            Spacer()

                // Logo
                Image("heart")
                    .resizable()
                    .frame(width: 200, height: 225)
                    .clipShape(Circle())
                    .shadow(radius: 10)

                // Title
                Text("Sign Up for Free!")
                    .font(.title.bold())
                    .foregroundColor(.white)

                // Fields
                CustomInputField(icon: "person", placeholder: "Username", text: $username)
                CustomInputField(icon: "envelope", placeholder: "Email Address", text: $email)
                CustomSecureField(icon: "lock", placeholder: "Password", text: $password)
                CustomSecureField(icon: "lock", placeholder: "Password Confirmation", text: $confirmPassword)

                            Spacer()
                            
                    
                // Sign Up Button
                Button(action: {
                    print("Sign Up pressed")
                }) {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(25)
                }
                .padding(.horizontal, 40)

                // Already have an account?
                HStack {
                    Text("Already have an account?")
                    NavigationLink("Sign In", destination: SignInView())
                        .foregroundColor(.white)
                }
                .font(.footnote)

                Spacer()
                            Spacer()
                            Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    SignUpView()
}
