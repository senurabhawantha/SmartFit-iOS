//
//  SystemSetupSymptomsView.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-24.
//
import SwiftUI

struct SystemSetupSymptomsView: View {
    @State private var tags: [String] = ["Headache", "Muscle Fatigue"]
    @State private var newTag: String = ""

    var body: some View {
        VStack(spacing: 30) {
            // Top bar
            HStack {
                Image(systemName: "chevron.left")
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            .padding(.top, 40)

            // Title
            Text("Do you have any\nsymptoms/allergy?")
                .font(.title2.bold())
                .foregroundColor(.pink)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)

            // Image (optional)
            Image("symptoms_illustration") // Add to Assets
                .resizable()
                .scaledToFit()
                .frame(height: 180)
                .padding(.horizontal)

            // Tag field
            VStack(alignment: .leading, spacing: 10) {
                TextField("Type and press enter...", text: $newTag, onCommit: {
                    if !newTag.isEmpty && tags.count < 10 {
                        tags.append(newTag)
                        newTag = ""
                    }
                })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

                // Tags display
                WrapTagsView(tags: tags)

                Text("\(tags.count)/10")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
            }

            Spacer()

            // Continue Button
            NavigationLink(destination: DashboardView()) {
                Text("Continue")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.pink)
                    .cornerRadius(15)
            }
            .padding(.horizontal, 40)
            .padding(.bottom, 20)
        }
    }
}

struct WrapTagsView: View {
    var tags: [String]

    var body: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 100), spacing: 10)], spacing: 10) {
            ForEach(tags, id: \.self) { tag in
                Text(tag)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .background(Color.pink.opacity(0.2))
                    .cornerRadius(10)
            }
        }
        .padding(.horizontal)
    }
}

