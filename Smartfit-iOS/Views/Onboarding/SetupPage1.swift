import SwiftUI

struct SetupPage1: View {
    var body: some View {
        VStack(spacing: 0) {
            // Top bar with progress and skip
            HStack {
                ProgressView(value: 0.33)
                    .progressViewStyle(LinearProgressViewStyle(tint: Color.pink))
                    .frame(width: 120)

                Spacer()

                NavigationLink("Skip", destination: LoginChoiceView())
                    .foregroundColor(.gray)
                    .font(.subheadline)
            }
            .padding(.horizontal)
            .padding(.top, 50)

            // Text content
            VStack(alignment: .leading, spacing: 10) {
                Text("Health & Fitness\nTracking")
                    .font(.title2.bold())
                    .foregroundColor(.pink)

                Text("Monitor heart rate, steps, calories, and activities , integrating with Apple Watch for real-time data.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 30)
            .padding(.top, 30)

            Spacer()

            // Illustration with Next button floating
            ZStack(alignment: .bottomTrailing) {
                Image("welcome_illustration1") // Use the uploaded illustration image name
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 600)
                    

                NavigationLink(destination: SetupPage2()) {
                    Image(systemName: "chevron.right")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .frame(width: 50, height: 50)
                        .background(Color.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                        .shadow(radius: 4)
                }
                .padding(.bottom, 20)
                .padding(.trailing, 50)
            }
        }
        .background(Color.white)
        .ignoresSafeArea()
    }
}


#Preview {
    SetupPage1()
}
