import SwiftUI

struct ResultView: View {
    
    @ObservedObject var viewModel: QuizViewModel
    
    var body: some View {
        
        TabView {
            resultPage
            profilePage
            destinationsPage
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .background(Color.appBackground.ignoresSafeArea())
        .navigationBarBackButtonHidden(true)
    }
    
    private var resultPage: some View {
        ScrollView {
            
            VStack(spacing: .spacingMedium) {
                Text("Dein Tauchtyp")
                    .font(.titleHero)
                    .foregroundColor(.navy)
                    .padding(.top, .spacingSmall)
                
                if !viewModel.results.isEmpty {
                    HStack(
                        spacing: .spacingMedium
                    ) {
                        
                        ForEach(viewModel.results, id: \.self) { type in
                            VStack(spacing: .spacingSmall) {
                                Text(type.profile.icon)
                                    .font(.system(size: 50))
                                
                                Text(type.profile.name)
                                    .font(.cardTitle)
                                    .foregroundColor(.teal)
                                    .multilineTextAlignment(.center)
                            }
                            .frame(maxWidth: .infinity)
                        }
                    }
                    .padding(.vertical, .spacingMedium)
                    .cardStyle()
                    
                    VStack(alignment: .leading, spacing: .spacingMedium) {
                        
                        Text("Das passt zu dir")
                            .font(.cardTitle)
                            .foregroundColor(.navy)
                        
                        ForEach(viewModel.results, id: \.self) { type in
                            
                            Text(type.profile.description)
                                .font(.bodyRegular)
                                .foregroundColor(.mainText)
                        }
                        
                        Text("Deine Stärken")
                            .font(.cardTitle)
                            .foregroundColor(.navy)
                            .padding(.top, .spacingSmall)
                        
                        ForEach(viewModel.results, id: \.self) { type in
                            
                            ForEach(
                                type.profile.strengths,
                                id: \.self
                            ) { strength in
                                
                                HStack(spacing: .spacingSmall) {
                                    
                                    Image("Hacken")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 15)
                                    
                                    Text(strength)
                                        .font(.bodyRegular)
                                        .foregroundColor(.mainText)
                                    
                                    Spacer()
                                }
                            }
                        }
                    }
                    .cardStyle()
                }
                Text("Für mehr Informationen swipe nach links!")
                    .font(.bodyRegular)
                    .foregroundColor(.subText)
                
                restartButton
            }
            .padding(.horizontal, .spacingLarge)
            .padding(.bottom, .spacingLarge)
        }
    }
    
    private var profilePage: some View {
        ScrollView {
            
            VStack(spacing: .spacingMedium) {
                
                Text("Dein Tauchprofil")
                    .font(.titleHero)
                    .foregroundColor(.navy)
                    .padding(.top, .spacingLarge)
                
                Text("So verteilen sich deine Antworten auf die verschiedenen Tauchertypen.")
                    .font(.bodyRegular)
                    .foregroundColor(.subText)
                    .multilineTextAlignment(.center)
                
                RadarChartView(scores: viewModel.scores)
                    .frame(height: 350)
                    .cardStyle()
                
                VStack(alignment: .leading, spacing: .spacingSmall) {
                    
                    Text("Deine sechs Tauchertypen")
                        .font(.cardTitle)
                        .foregroundColor(.navy)
                    
                    ForEach(DiverType.allCases, id: \.self) { type in
                        
                        HStack {
                            Text(type.profile.icon)
                                .font(.title3)
                            
                            Text(type.profile.name)
                                .font(.bodyRegular)
                                .foregroundColor(.mainText)
                            
                            Spacer()
                            
                            Text(String(
                                format: "%.0f",
                                viewModel.scores[type] ?? 0
                            )
                            )
                            .font(.captionText)
                            .foregroundColor(.teal)
                        }
                    }
                }
                .cardStyle()
            }
            Text("Wohin soll es als nächstes gehen? Swipe nach links und finde dein nächstes Reiseziel!")
                .font(.bodyRegular)
                .foregroundColor(.subText)
            
            restartButton
        }
        .padding(.horizontal, .spacingLarge)
        .padding(.bottom, .spacingLarge)
    }
    
    private var destinationsPage: some View {
        ScrollView {
            VStack(spacing: .spacingMedium) {
                
                Text("Deine Reiseziele")
                    .font(.titleHero)
                    .foregroundColor(.navy)
                    .padding(.top, .spacingLarge)
                
                Text("Diese Länder passen zu deinem Tauchertyp")
                    .font(.bodyRegular)
                    .foregroundColor(.subText)
                    .multilineTextAlignment(.center)
                
                VStack(
                    alignment: .leading,
                    spacing: .spacingMedium
                ) {
                    
                    Text("Empfohlene Ziele")
                        .font(.cardTitle)
                        .foregroundColor(.navy)
                    
                    
                    ForEach(
                                    viewModel.resultDestinations
                                ) { destination in

                                    destinationCard(destination)
                                }


                                Text(
                                    "Bereit für dein nächstes Tauchabenteuer?"
                                )
                                .font(.bodyRegular)
                                .foregroundColor(.subText)
                                .multilineTextAlignment(.center)
                                .padding(.top, .spacingSmall)
                }

                restartButton
            }
            .padding(.horizontal, .spacingLarge)
            .padding(.bottom, .spacingLarge)
        }
    }
    
    private func destinationCard(
        _ destination: Destination
    ) -> some View {

        VStack(
            alignment: .leading,
            spacing: .spacingMedium
        ) {

            HStack(spacing: .spacingSmall) {

                Text(destination.flag)
                    .font(.system(size: 30))

                Text(destination.name)
                    .font(.cardTitle)
                    .foregroundColor(.navy)

                Spacer()
            }

            HStack(
                spacing: .spacingSmall
            ) {
                ForEach(
                    destination.tags,
                    id: \.self
                ) { tag in

                    Text(tag)
                        .font(.captionText)
                        .foregroundColor(.teal)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .background(
                            Color.teal.opacity(0.10)
                        )
                        .cornerRadius(10)
                }
            }

            Text(destination.description)
                .font(.bodyRegular)
                .foregroundColor(.mainText)
                .fixedSize(
                    horizontal: false,
                    vertical: true
                )
        }
        .frame(
            maxWidth: .infinity,
            alignment: .leading
        )
        .cardStyle()
    }
    
    private var restartButton: some View {
        NavigationLink {
            QuizView(
                viewModel: QuizViewModel()
            )
        } label: {
            Text("Nochmal spielen")
                .font(.cardTitle)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color.teal)
                .cornerRadius(.buttonCornerRadius)
        }
        .padding(.top, .spacingSmall)
    }
}


#Preview {
    
    let viewModel = QuizViewModel()
    
    viewModel.scores = [
        .photographer: 25,
        .bigAnimal: 10,
        .wreck: 3,
        .macro: 4,
        .relaxed: 8,
        .adventure: 15
    ]
    
    return ResultView(
        viewModel: viewModel
    )
}
