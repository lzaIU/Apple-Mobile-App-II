import SwiftUI

struct QuizView: View {
    
    @ObservedObject var viewModel: QuizViewModel
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            HStack {
                
                Spacer()
                
                Text("\(Int(viewModel.progress * 100)) %")
                    .font(.captionText)
                    .foregroundColor(.subText)
            }
            
            ProgressView(value: viewModel.progress)
                .tint(.teal)
                .padding(.top, .spacingSmall)
            
            ScrollView {
                VStack(alignment: .leading, spacing: .spacingMedium) {
                    
                    Text(viewModel.currentQuestion.question)
                        .font(.titleHero)
                        .foregroundColor(.navy)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.top, .spacingLarge)
                    
                    switch viewModel.currentQuestion.type {
                    case .singleChoice:
                        answerSection
                    case .multipleChoice:
                        multipleChoiceSection
                    case .scale:
                        scaleSection
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, .spacingMedium)
            }
            .frame(maxHeight: .infinity)
            
            
            Button {
                viewModel.submitAnswer()
            } label: {
                Text(
                    viewModel.currentQuestionIndex == viewModel.questions.count - 1
                    ? "Ergebnis anzeigen"
                    : "Weiter"
                )
                .font(.cardTitle)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(
                    viewModel.canContinue
                    ? Color.teal
                    : Color.gray.opacity(0.4)
                )
                .cornerRadius(.buttonCornerRadius)
            }
            .disabled(!viewModel.canContinue)
            .padding(.top, .spacingMedium)
        }
        .padding(.horizontal, .spacingLarge)
        .padding(.vertical, .spacingMedium)
        .background(
            Color.appBackground
                .ignoresSafeArea()
        )
        .navigationDestination(isPresented: $viewModel.quizFinished) {
            ResultView(viewModel: viewModel)
        }
        .navigationBarBackButtonHidden(true)
    }
    
    private var answerSection: some View {
        
        VStack(spacing: .spacingSmall) {
            
            ForEach(
                viewModel.currentQuestion.answers.indices,
                id: \.self
            ) { index in
                answerButton(index: index)
            }
        }
    }
    
    private var multipleChoiceSection: some View {
        
        VStack(alignment: .leading, spacing: .spacingMedium) {
            
            if let maxSelections = viewModel.currentQuestion.maxSelections {
                
                Text("Wähle bis zu \(maxSelections) Antworten")
                    .font(.captionText)
                    .foregroundColor(.subText)
            }
            
            ForEach(
                viewModel.currentQuestion.answers.indices,
                id: \.self
            ) { index in
                
                answerButton(index: index)
            }
        }
    }
    
    private func answerButton(index: Int) -> some View {
        
        let answer = viewModel.currentQuestion.answers[index]
        let selected = viewModel.isSelected(index: index)
        
        return Button {
            
            viewModel.selectionAnswer(index: index)
            
        } label: {
            
            HStack(spacing: .spacingMedium) {
                
                Image(
                    systemName: selected
                    ? "checkmark.circle.fill"
                    : "circle"
                )
                .font(.title3)
                .foregroundColor(
                    selected
                    ? .teal
                    : .gray.opacity(0.5)
                )
                
                Text(answer.text)
                    .font(.bodyRegular)
                    .foregroundColor(.mainText)
                    .multilineTextAlignment(.leading)
                
                Spacer()
                
            }
            .padding(.spacingMedium)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                selected
                ? Color.selectedAnswer.opacity(0.15)
                : Color.cardBackground
            )
            .overlay(
                RoundedRectangle(
                    cornerRadius: .answerCornerRadius
                )
                .stroke(
                    selected
                    ? Color.teal
                    : Color.customBorder,
                    lineWidth: selected ? 2 : 1
                )
            )
            .cornerRadius(.answerCornerRadius)
        }
    }
    
    private var scaleSection: some View {
        VStack(spacing: .spacingLarge) {
            if let statement = viewModel.currentQuestion.statement {
                
                Text(statement)
                    .font(.bodyRegular)
                    .foregroundColor(.mainText)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
            }
            Text("\(viewModel.scaleValue)")
                .font(.system(size: 40, weight: .bold))
                .foregroundColor(.teal)
                .frame(maxWidth: .infinity)
            
            Slider(
                value: Binding(
                    get: {
                        Double(viewModel.scaleValue)
                    },
                    set: {
                        viewModel.scaleValue = Int($0)
                    }
                ),
                in: 0...5,
                step: 1
            )
            .tint(.teal)
            
            
            HStack {
                Text("0")
                    .font(.captionText)
                    .foregroundColor(.subText)
                
                Spacer()
                
                Text("5")
                    .font(.captionText)
                    .foregroundColor(.subText)
            }
            
            Text("Wie sehr trifft diese Aussage auf dich zu?")
                .font(.captionText)
                .foregroundColor(.subText)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
            
            Text("0 gar nicht und 5 vollständig")
                .font(.captionText)
                .foregroundColor(.subText)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
        }
        .cardStyle()
    }
}

#Preview {
    QuizView(
        viewModel: QuizViewModel()
    )
}

