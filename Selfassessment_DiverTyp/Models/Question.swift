import Foundation

enum QuestionType {
    case singleChoice
    case multipleChoice
    case scale
}

struct Answer {
    let text: String
    let scores: [DiverType: Int]
}

struct Question: Identifiable {
    let id: Int
    let type: QuestionType
    let question: String
    let answers: [Answer]
    let maxSelections: Int?
    let minValue: Int?
    let maxValue: Int?
    let statement: String?
    let scaleScores: [DiverType: Double]
}
