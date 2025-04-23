import SwiftUI

struct LoginChoiceView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.pink.opacity(0.9), Color.red]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Spacer()
                
                Image("AppLogo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .shadow(radius: 10)

                Text("Fitness &\nHealth-Care Assistant")
                    .font(.title2.bold())
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)

                Spacer()

                NavigationLink(destination: SignInView()) {
                    Text("Login")
                        .foregroundColor(.black)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(30)
                        .padding(.horizontal, 40)
                }

                NavigationLink(destination: SignUpView()) {
                    Text("Register")
                        .foregroundColor(.black)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(30)
                        .padding(.horizontal, 40)
                }

                Spacer()
            }
        }
    }
}
