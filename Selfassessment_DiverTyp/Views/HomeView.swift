import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationStack {
            
            VStack (spacing: 0) {
                Spacer()
                
                Text("DiveAssessment")
                    .font(.titleHero)
                    .foregroundColor(.navy)
                
                Text("Welcher Tauchertyp bist du?")
                    .font(.bodyRegular)
                    .foregroundColor(.subText)
                    .padding(.top, .spacingSmall)
                
                Spacer()
                
                Image("Startbild")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 180)
                    .padding(.horizontal)
                
                Spacer()
                
                Text("Finde heraus, welcher Tauchertyp am besten zu dir passt.")
                    .font(.bodyRegular)
                    .foregroundColor(.subText)
                    .padding(.top, .spacingSmall)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                NavigationLink {
                    QuizView(viewModel: QuizViewModel())
                } label: {
                    Text("Assessment starten")
                        .font(.cardTitle)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .background(Color.teal)
                        .cornerRadius(.buttonCornerRadius)
                }
            }
            .padding(.horizontal, .spacingLarge)
            .background(
                Color.appBackground.ignoresSafeArea()
            )
            .navigationBarHidden(true)
        }
        .navigationBarBackButtonHidden(true)
    }
}


#Preview {
    HomeView()
}
