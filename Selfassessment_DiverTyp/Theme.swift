import SwiftUI

// MARK: - Colors
extension Color {
    /// Hauptfarbe der App – dunkles Marineblau.
    static let navy = Color(red: 0.04, green: 0.16, blue: 0.22)
    
    /// Primäre Akzentfarbe – erinnert an Meer und Wasser.
    static let teal = Color(red: 0.15, green: 0.55, blue: 0.58)
    
    /// Heller Hintergrund für die Views.
    static let appBackground = Color(red: 213/255, green: 230/255, blue: 230/255)
    
    /// Weiß für Karten und hervorgehobene Bereiche.
    static let cardBackground = Color.white
    
    /// Hauptfarbe für normalen Text.
    static let mainText = Color(red: 0.10, green: 0.15, blue: 0.18)
    
    /// Sekundärfarbe für weniger wichtige Informationen.
    static let subText = Color.gray
    
    /// Dezente Farbe für Rahmen und Trennlinien.
    static let customBorder = Color.gray.opacity(0.20)
    
    /// Farbe für eine ausgewählte Antwort.
    static let selectedAnswer = Color(red: 0.15, green: 0.55, blue: 0.58)
}

// MARK: - Typography (Textgrößen)
extension Font {
    static let titleHero = Font.system(size: 28, weight: .bold, design: .rounded)
    static let cardTitle = Font.system(size: 18, weight: .semibold, design: .default)
    static let bodyRegular = Font.system(size: 18, weight: .regular, design: .default)
    static let captionText = Font.system(size: 15, weight: .medium, design: .default)
}

// MARK: - Layout Constants
extension CGFloat {
    // Spacing
    static let spacingLarge: CGFloat = 24
    static let spacingMedium: CGFloat = 16
    static let spacingSmall: CGFloat = 8
    
    // Corner Radii
    static let cardCornerRadius: CGFloat = 16
    static let buttonCornerRadius: CGFloat = 14
    static let answerCornerRadius: CGFloat = 12
}

// MARK: - View Modifiers / Style Helper
extension View {
    /// Wendet deinen Standard-Kartenstil an
    func cardStyle() -> some View {
        self
            .padding(.spacingMedium)
            .background(Color.cardBackground)
            .cornerRadius(.cardCornerRadius)
            .shadow(color: Color.black.opacity(0.08), radius: 4, x: 0, y: 2)
    }
}
