//
//  OTPVerificationView.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-24.
//
import SwiftUI

struct OTPVerificationView: View {
    @State private var code = Array(repeating: "", count: 4)

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.pink.opacity(0.8), Color.red.opacity(0.7)]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                            .ignoresSafeArea()
                        
                        VStack(spacing: 30) {
                            Spacer()
                            
                Image("AppLogo")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .shadow(radius: 8)

                Text("OTP Verification")
                    .font(.title.bold())
                    .foregroundColor(.white)

                Text("Enter the verification code we just sent on your email address.")
                    .font(.caption)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                HStack(spacing: 12) {
                    ForEach(0..<4, id: \.self) { index in
                        TextField("", text: $code[index])
                            .keyboardType(.numberPad)
                            .multilineTextAlignment(.center)
                            .frame(width: 50, height: 50)
                            .background(Color.white)
                            .cornerRadius(10)
                    }
                }

                            // Verify Code Button → Navigates to ResetPasswordView
                            NavigationLink(destination: ResetPasswordView()) {
                                Text("Verify Code")
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.black)
                                    .cornerRadius(25)
                            }
                            .padding(.horizontal, 40)

                            Spacer()


                Text("Didn't receive code? ")
                    .font(.footnote)
                    + Text("Resend code")
                        .foregroundColor(.white)
                        .font(.footnote)
            }
            .padding()
        }
    }
}

#Preview {
    OTPVerificationView()
}
