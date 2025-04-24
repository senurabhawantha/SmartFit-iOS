//
//  CustomFields.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-24.
//

import SwiftUI

struct CustomInputField: View {
    var icon: String
    var placeholder: String
    @Binding var text: String

    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.gray)
            TextField(placeholder, text: $text)
                .autocapitalization(.none)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .padding(.horizontal, 40)
    }
}

struct CustomSecureField: View {
    var icon: String
    var placeholder: String
    @Binding var text: String

    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.gray)
            SecureField(placeholder, text: $text)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .padding(.horizontal, 40)
    }
}
