//
//  DashboardView.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-24.
//
import SwiftUI

struct DashboardView: View {
    let dates = ["07", "08", "09", "10", "11"]
    let days = ["Wed", "Thu", "Fri", "Sat", "Sun"]
    @State private var selectedDate = 1

    var body: some View {
        VStack(spacing: 20) {
            // Header
            HStack(spacing: 15) {
                Image("user_avatar") // Add to Assets
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())

                VStack(alignment: .leading, spacing: 4) {
                    Text("Hello Linh!")
                        .font(.subheadline)
                        .foregroundColor(.gray)

                    Text("Thursday, 08 July")
                        .font(.headline)
                }

                Spacer()

                Image(systemName: "calendar")
                    .font(.title2)
                    .foregroundColor(.black.opacity(0.8))
            }
            .padding(.horizontal)

            // Date selector
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(0..<dates.count, id: \.self) { index in
                        VStack {
                            Text(dates[index])
                                .font(.headline)
                                .foregroundColor(selectedDate == index ? .white : .gray)
                            Text(days[index])
                                .font(.caption)
                                .foregroundColor(selectedDate == index ? .white : .gray)
                        }
                        .padding()
                        .background(selectedDate == index ? Color.pink : Color.gray.opacity(0.2))
                        .cornerRadius(12)
                        .onTapGesture {
                            selectedDate = index
                        }
                    }
                }
                .padding(.horizontal)
            }

            // Section Title
            HStack {
                Text("Your activity")
                    .font(.headline)
                Spacer()
            }
            .padding(.horizontal)

            // Activity Grid
            LazyVGrid(columns: [GridItem(), GridItem()], spacing: 15) {
                ActivityCard(icon: "figure.walk", title: "Walk", value: "8104", unit: "Steps", progress: 0.8)
                ActivityCard(icon: "moon", title: "Sleep", value: "6", unit: "Hours", progress: 0.6)
                ActivityCard(icon: "drop", title: "Water", value: "3", unit: "Bottles", progress: 0.3)
                ActivityCard(icon: "heart", title: "Heart", value: "95", unit: "bpm", progress: 0.9)
            }
            .padding(.horizontal)

            Spacer()

            // Tab Bar with SOS button
            ZStack {
                HStack {
                    Spacer()
                    ForEach(["house", "location", "figure.run", "cloud.sun", "bell", "person"], id: \.self) { icon in
                        if icon == "figure.run" {
                            Spacer() // leave space for SOS button
                        }
                        Image(systemName: icon)
                            .font(.system(size: 20))
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.black.opacity(0.8))
                    }
                    Spacer()
                }
                .padding(.horizontal)
                .frame(height: 70)
                .background(Color.white.shadow(radius: 3))

                // SOS Button
                Button(action: {
                    print("SOS tapped")
                }) {
                    Text("SOS")
                        .font(.headline.bold())
                        .foregroundColor(.white)
                        .frame(width: 60, height: 60)
                        .background(Color.red)
                        .clipShape(Circle())
                        .shadow(radius: 4)
                }
                .offset(y: -30)
            }
        }
        .padding(.top)
        .background(Color.white)
        .ignoresSafeArea(edges: .bottom)
    }
}

struct ActivityCard: View {
    var icon: String
    var title: String
    var value: String
    var unit: String
    var progress: CGFloat

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text(title)
                    .font(.headline)
                Spacer()
                Image(systemName: icon)
            }

            if title == "Walk" {
                ZStack {
                    Circle()
                        .stroke(Color.gray.opacity(0.2), lineWidth: 8)
                        .frame(width: 80, height: 80)
                    Circle()
                        .trim(from: 0, to: progress)
                        .stroke(Color.pink, style: StrokeStyle(lineWidth: 8, lineCap: .round))
                        .rotationEffect(.degrees(-90))
                        .frame(width: 80, height: 80)
                    VStack {
                        Text(value)
                            .font(.title2.bold())
                        Text(unit)
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
            } else {
                VStack(alignment: .leading) {
                    Text(value)
                        .font(.title2.bold())
                    Text(unit)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(15)
    }
}
#Preview {
    DashboardView()
}
