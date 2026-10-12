import Foundation
import Combine


class QuizViewModel: ObservableObject {
    @Published var currentQuestionIndex = 0
    @Published var scores: [DiverType: Double] = [:]
    @Published var selectedAnswers: Set<Int> = []
    @Published var quizFinished = false
    @Published var scaleValue: Int = 0
    
    @Published private(set) var questions: [Question] = questionData.shuffled()
    
    
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    var progress: Double {
        Double(currentQuestionIndex + 1) / Double(questions.count)
    }
    
    init() {
        resetScores()
    }
    
    func selectionAnswer (index: Int) {
        
        switch currentQuestion.type {
        case .singleChoice:
            selectedAnswers = [index]
            
        case .multipleChoice:
            if selectedAnswers.contains(index) {
                selectedAnswers.remove(index)
                return
            }
            
            if let maxSelections = currentQuestion.maxSelections {
                if selectedAnswers.count >= maxSelections {
                    return
                }
            }
            
            selectedAnswers.insert(index)
            
        case .scale:
            break
        }
    }
    
    func isSelected (index: Int) -> Bool {
        selectedAnswers.contains(index)
    }
    
    var canContinue: Bool {
        switch currentQuestion.type {
        case .singleChoice:
            return selectedAnswers.count == 1
            
        case .multipleChoice:
            return !selectedAnswers.isEmpty
            
        case .scale:
            return true
        }
    }
    
    func submitAnswer() {
        switch currentQuestion.type {
        case .singleChoice, .multipleChoice:
            for index in selectedAnswers {
                let answer = currentQuestion.answers[index]
                
                for (type, points) in answer.scores {
                    scores[type, default: 0] += Double(points)
                }
            }
            
        case .scale:
            for (type, weight) in currentQuestion.scaleScores {
                scores[type, default: 0] += Double(scaleValue) * weight
            }
        }
        
        goToNextQuestion()
    }
    
    
    func goToNextQuestion() {
        if currentQuestionIndex + 1 < questions.count {
            currentQuestionIndex += 1
            
            selectedAnswers.removeAll()
            scaleValue = 0
        } else {
            quizFinished = true
        }
    }
    
    
    var results: [DiverType] {
        guard let highestScore = scores.values.max() else {
            return []
        }
        return DiverType.allCases.filter { type in
            scores[type] == highestScore
        }
    }
    var result: DiverType? {
        results.first
    }
    
    
    func resetQuiz() {
        currentQuestionIndex = 0
        selectedAnswers.removeAll()
        scaleValue = 0
        quizFinished = false
        
        resetScores()
        
        questions = questionData.shuffled()
    }
    
    
    func resetScores() {
        scores = [:]
        
        for type in DiverType.allCases {
            scores[type] = 0
        }
    }
    
    var resultDestinations: [Destination] {

        var destinations: [Destination] = []

        for type in results {

            for destinationID in type.profile.destinationIDs {
                if let destination = destinationData.first(
                    where: { $0.id == destinationID }
                ) {
                    if !destinations.contains(
                        where: { $0.id == destination.id }
                    ) {
                        destinations.append(destination)
                    }
                }
            }
        }
        return destinations
    }
}
