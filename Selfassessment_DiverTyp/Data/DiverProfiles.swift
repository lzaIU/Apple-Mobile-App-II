
extension DiverType {
    var profile: DiverProfile {
        switch self {
            
        case .photographer:
            return DiverProfile(
                type: self,
                name: "Underwater Photographer",
                icon: "📷",
                shortDescription: "Du suchst nach besonderen Momenten unter Wasser",
                description: "Du liebst es, die Unterwasserwelt aus einer besonderen Perspektive festzuhalten. Farben, Licht, Tiere und ungewöhnliche Situationen interessieren dich besonders.",
                strengths: [
                    "Fotografie",
                    "Beobachtung",
                    "Kreativität"
                ],
                destinationIDs: [
                    "indonesia",
                    "philippines",
                    "maldives"
                ]
            )
            
        case .wreck:
            return DiverProfile(
                type: self,
                name: "Wreck Diver",
                icon: "⚓",
                shortDescription: "Dich faszinieren Wracks, Geschichte und Erkundung.",
                description: "Für dich beginnt ein spannender Tauchgang dort, wo andere nur einen Tauchplatz sehen. Wracks verbinden Geschichte, Abenteuer und Unterwassererkundung.",
                strengths: [
                    "Entdecker",
                    "Wracks",
                    "Orientierung"
                ],
                destinationIDs: [
                    "egypt",
                    "malta",
                    "micronesia"
                ]
            )
            
        case .bigAnimal:
            return DiverProfile(
                type: self,
                name: "Big Animal Diver",
                icon: "🦈",
                shortDescription: "Grosse Meerestiere machen einen Tauchgang für dich besonders.",
                description: "Du suchst unter Wasser vor allem die grossen Begegnungen. Haie, Rochen, Schildkröten und andere grosse Meerestiere faszinieren dich.",
                strengths: [
                    "Grossfische",
                    "Tierbeobachtung"
                ],
                destinationIDs: [
                    "south-africa",
                    "mexico",
                    "australia"
                ]
            )
            
        case .macro:
            return DiverProfile(
                type: self,
                name: "Macro Diver",
                icon: "🔍",
                shortDescription: "Du entdeckst die kleinen Details, die andere übersehen.",
                description: "Während andere nach grossen Tieren Ausschau halten, entdeckst du die kleinen Wunder der Unterwasserwelt. Nacktschnecken, Garnelen und Seepferdchen faszinieren dich.",
                strengths: [
                    "Kleintiere",
                    "Detailbeobachtung",
                    "Geduld",
                    "Meeresbiologie"
                ],
                destinationIDs: [
                    "indonesia",
                    "philippines",
                    "malaysia"
                ]
            )
            
        case .relaxed:
            return DiverProfile(
                type: self,
                name: "Relaxed Diver",
                icon: "🌊",
                shortDescription: "Für dich stehen Ruhe, Entspannung und Natur im Vordergrund.",
                description: "Du geniesst es, langsam über ein Riff zu schweben, die Umgebung auf dich wirken zu lassen und den Alltag hinter dir zu lassen.",
                strengths: [
                    "Entspannung",
                    "Natur",
                    "ruhige Tauchgänge"
                ],
                destinationIDs: [
                    "egypt",
                    "maldives",
                    "mauritius"
                ]
            )
            
        case .adventure:
            return DiverProfile(
                type: self,
                name: "Adventure Diver",
                icon: "🧭",
                shortDescription: "Du suchst Abwechslung, Herausforderungen und Abenteuer.",
                description: "Für dich darf ein Tauchgang gerne etwas Besonderes sein. Neue Tauchplätze, anspruchsvollere Bedingungen und unbekannte Unterwasserwelten reizen dich.",
                strengths: [
                    "Abenteuer",
                    "Exploration",
                    "neue Tauchplätze",
                    "Herausforderungen"
                ],
                destinationIDs: [
                    "indonesia",
                    "galapagos",
                    "costa-rica"
                ]
            )
        }
    }
}
