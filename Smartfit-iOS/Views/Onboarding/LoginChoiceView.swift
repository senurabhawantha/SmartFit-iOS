import SwiftUI

struct LoginChoiceView: View {
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
#Preview {
    LoginChoiceView()
}
