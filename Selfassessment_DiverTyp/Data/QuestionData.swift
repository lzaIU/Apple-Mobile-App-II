import Foundation

let questionData: [Question] = [
    
    Question(
        id: 1,
        type: .singleChoice,
        question: "Du planst deinen nächsten Tauchurlaub. Welches Ziel steht ganz oben auf deiner Liste?",
        answers: [
            Answer(
                text: "Raja Ampat – unglaublich viele kleine Lebewesen und seltene Schnecken.",
                scores: [
                    .macro: 3]
            ),
            Answer(
                text: "Galapagos – Großfische, Hammerhaie und Walhaie hautnah.",
                scores: [
                    .bigAnimal: 3,]
            ),
            Answer(
                text: "Chuuk Lagoon – die legendärsten Schiffs- und Flugzeugwracks der Welt.",
                scores: [
                    .wreck: 3,
                    .adventure: 1]
            ),
            Answer(
                text: "Malediven – ruhiges Dahintreiben über bunten Riffen bei angenehmen Wassertemperaturen.",
                scores: [
                    .relaxed: 3]
            )
        ],
        maxSelections: nil,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),
    
    Question(
        id: 2,
        type: .singleChoice,
        question: "Was gehört für dich vor dem Tauchgang zur wichtigsten Vorbereitung?",
        answers: [
            Answer(
                text: "Das peinlich genaue Reinigen der Kamera-Ports und Prüfen der O-Ringe.",
                scores: [
                    .photographer: 3]
            ),
            Answer(
                text: "Die genaue Analyse des Wrackplans und der Penetrationsrouten.",
                scores: [
                    .wreck: 3,
                    .adventure: 1]
            ),
            Answer(
                text: "Ein ausgiebiges Briefing über Strömung, Tiefe und Einstieg, um unnötige Anstrengung zu vermeiden.",
                scores: [
                    .relaxed: 3]
            ),
            Answer(
                text: "Ein kurzes Briefing, danach geht es sofort los – Hauptsache Abenteuer!",
                scores: [
                    .adventure: 3]
            )
        ],
        maxSelections: nil,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),
    
    Question(
        id: 3,
        type: .singleChoice,
        question: "Du bist unter Wasser und siehst in der Ferne einen Schatten im Blauwasser. Wie reagierst du?",
        answers: [
            Answer(
                text: "Ich paddel dynamisch ins Blauwasser, um das Großtier auf keinen Fall zu verpassen.",
                scores: [
                    .bigAnimal: 3,
                    .photographer: 1]
            ),
            Answer(
                text: "Ich ziehe meine Kamera hoch, stelle den Fokus ein und warte geduldig.",
                scores: [
                    .photographer: 3,
                    .relaxed: 1]
            ),
            Answer(
                text: "Ich passe auf, dass ich die Gruppe nicht verliere, bleibe aber bei meinem entspannten Tempo.",
                scores: [
                    .relaxed: 2]
            ),
            Answer(
                text: "Ich schaue kurz hin, suche dann aber weiter nach dem nächsten Einstieg.",
                scores: [
                    .wreck: 3]
            )
        ],
        maxSelections: nil,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),
    
    Question(
        id: 4,
        type: .singleChoice,
        question: "Welches Zubehör darf in deiner Tauchtasche niemals fehlen?",
        answers: [
            Answer(
                text: "Eine extrem starke Tauchlampe und eine Backup-Spule für enge Passagen.",
                scores: [
                    .wreck: 3,
                    .adventure: 1]
            ),
            Answer(
                text: "Makro-Vorsatzlinsen und Blitzarme.",
                scores: [
                    .macro: 3,
                    .photographer: 2]
            ),
            Answer(
                text: "Ein Kompass und eine Schneidvorrichtung für unerwartete Hindernisse.",
                scores: [
                    .adventure: 2,
                    .wreck: 2]
            ),
            Answer(
                text: "Ein bequemer BCD und ein extra weiches Mundstück für maximalen Komfort.",
                scores: [
                    .relaxed: 2]
            )
        ],
        maxSelections: nil,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),
    
    Question(
        id: 5,
        type: .singleChoice,
        question: "Was bedeutet für dich ein „perfekter Tauchgang“?",
        answers: [
            Answer(
                text: "Ich habe mindestens ein richtig scharfes, gut ausgeleuchtetes Motiv fotografiert.",
                scores: [
                    .photographer: 3]
            ),
            Answer(
                text: "Ich habe etwas gesehen, das größer war als ich selbst.",
                scores: [
                    .bigAnimal: 3]
            ),
            Answer(
                text: "Ich bin durch alte Gänge getaucht und habe Geschichte unter Wasser gespürt.",
                scores: [
                    .wreck: 3,
                    .adventure: 2]
            ),
            Answer(
                text: "Ich bin schwerelos geschwebt, habe wenig Luft verbraucht und bin völlig entspannt aufgetaucht.",
                scores: [
                    .relaxed: 3]
            )
        ],
        maxSelections: nil,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),
    
    Question(
        id: 6,
        type: .singleChoice,
        question: "Du stehst vor einer Felsspalte. Worauf hoffst du?",
        answers: [
            Answer(
                text: "Auf eine winzige, farbenfrohe Nacktschnecke oder eine Harlekingarnele.",
                scores: [
                    .macro: 3,
                    .photographer: 1]
            ),
            Answer(
                text: "Auf einen schlafenden Ammenhai oder einen gigantischen Zackenbarsch.",
                scores: [
                    .bigAnimal: 3,
                    .photographer: 1]
            ),
            Answer(
                text: "Auf ein vergessenes Artefakt oder eine historische Messingarmatur.",
                scores: [
                    .adventure: 2,
                    .wreck: 2]
            ),
            Answer(
                text: "Ich genieße einfach den Ausblick und die Farben, ohne etwas Bestimmtes zu erwarten.",
                scores: [
                    .relaxed: 3]
            )
        ],
        maxSelections: nil,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),
    
    Question(
        id: 7,
        type: .singleChoice,
        question: "Was nervt dich unter Wasser am meisten?",
        answers: [
            Answer(
                text: "Hektik, Flossenschläge von anderen und Stress im Wasser.",
                scores: [
                    .relaxed: 3]
            ),
            Answer(
                text: "Taucher, die mit ihren Sedimentwolken die Sicht für ein Foto ruinieren.",
                scores: [
                    .photographer: 3,
                    .macro: 1]
            ),
            Answer(
                text: "Ein Tauchgang, bei dem „nichts passiert“ und der Guide nur starr einer Linie folgt.",
                scores: [
                    .adventure: 3,
                    .bigAnimal: 1,
                    .macro: 1]
            ),
            Answer(
                text: "Tauchplätze ohne Struktur oder Tiefe, bei denen man nur über flachem Sand schwimmt.",
                scores: [
                    .photographer: 1,
                    .wreck: 3,
                    .adventure: 3]
            )
        ],
        maxSelections: nil,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),
    
    Question(
        id: 8,
        type: .singleChoice,
        question: "Wie gestaltest du dein Logbuch nach dem Tauchgang?",
        answers: [
            Answer(
                text: "Ich trage exakt die Spezies, Wassertemperatur und Sichtweiten ein.",
                scores: [
                    .macro: 2,
                    .relaxed: 1
                ]
            ),
            Answer(
                text: "Ich lade meine Fotos hoch und verlinke die Kameraeinstellungen.",
                scores: [
                    .photographer: 3
                ]
            ),
            Answer(
                text: "Ich zeichne Skizzen vom Aufbau des Tauchplatzes oder des Wracks.",
                scores: [
                    .wreck: 3,
                    .adventure: 1
                ]
            ),
            Answer(
                text: "Ein kurzer Haken, Tiefe und Zeit – der Rest bleibt in meiner Erinnerung.",
                scores: [
                    .relaxed: 3
                ]
            )
        ],
        maxSelections: nil,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),

    Question(
        id: 9,
        type: .singleChoice,
        question: "Welches Gefühl beschreibt deine Haltung zum Tauchen am besten?",
        answers: [
            Answer(
                text: "Der Rausch der Erkundung und das Betreten unbekannter Pfade.",
                scores: [
                    .adventure: 3,
                    .wreck: 1
                ]
            ),
            Answer(
                text: "Die Faszination für die gewaltige Kraft und Größe der Meeresbewohner.",
                scores: [
                    .bigAnimal: 3
                ]
            ),
            Answer(
                text: "Schwerelosigkeit als ultimative Form der Meditation.",
                scores: [
                    .relaxed: 3
                ]
            ),
            Answer(
                text: "Das Einfangen unvergesslicher visueller Momente.",
                scores: [
                    .photographer: 3,
                    .macro: 1
                ]
            )
        ],
        maxSelections: nil,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),


    Question(
        id: 10,
        type: .singleChoice,
        question: "Wie wählst du deine Tauchpartner (Buddies) am liebsten aus?",
        answers: [
            Answer(
                text: "Jemand, der ruhig im Wasser liegt und kein Problem damit hat, 20 Minuten an einem Fleck zu verweilen.",
                scores: [
                    .macro: 2,
                    .photographer: 2
                ]
            ),
            Answer(
                text: "Jemand mit guter Tarierung und Erfahrung mit schwierigen Bedingungen oder Höhlen/Wracks.",
                scores: [
                    .adventure: 3,
                    .wreck: 2
                ]
            ),
            Answer(
                text: "Jemand, der genauso fasziniert von Haien und Rochen ist wie ich.",
                scores: [
                    .bigAnimal: 3
                ]
            ),
            Answer(
                text: "Hauptsache entspannt, stressfrei und mit guter Laune an Deck.",
                scores: [
                    .relaxed: 3
                ]
            )
        ],
        maxSelections: nil,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),

    Question(
        id: 11,
        type: .multipleChoice,
        question: "Welche dieser Tauchplatz-Features klingen für dich besonders verlockend?",
        answers: [
            Answer(
                text: "Ein historisches Frachtschiff auf 28 Meter Tiefe.",
                scores: [
                    .wreck: 3
                ]
            ),
            Answer(
                text: "Eine Strömungskante, an der Pelagial-Fische vorbeiziehen.",
                scores: [
                    .bigAnimal: 3,
                    .adventure: 1
                ]
            ),
            Answer(
                text: "Ein ruhiges, flaches Korallenriff mit Sandflächen.",
                scores: [
                    .relaxed: 3
                ]
            ),
            Answer(
                text: "Eine Wand mit Tausenden kleinen Spalten und Schwämmen.",
                scores: [
                    .macro: 3
                ]
            ),
            Answer(
                text: "Ein unerforschtes Höhlensystem oder ein Canyonsystem.",
                scores: [
                    .adventure: 3
                ]
            ),
            Answer(
                text: "Ein bekannter Photopoint mit perfektem Lichtspiel.",
                scores: [
                    .photographer: 3
                ]
            )
        ],
        maxSelections: 2,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),

    Question(
        id: 12,
        type: .multipleChoice,
        question: "Was gehört für dich zu den spannendsten Meeresbewohnern?",
        answers: [
            Answer(
                text: "Walhaie und Manta-Rochen.",
                scores: [
                    .bigAnimal: 3
                ]
            ),
            Answer(
                text: "Pygmäen-Seepferdchen und Geisterpfeifenfische.",
                scores: [
                    .macro: 3,
                    .photographer: 1
                ]
            ),
            Answer(
                text: "Große Haie (z.B. Tigerhaie, Hammerhaie).",
                scores: [
                    .bigAnimal: 3,
                    .adventure: 1
                ]
            ),
            Answer(
                text: "Nacktschnecken (Nudibranchs) in allen Variationen.",
                scores: [
                    .macro: 3,
                    .photographer: 1
                ]
            ),
            Answer(
                text: "Schulen von Tausenden Büffelkopfpapageifischen.",
                scores: [
                    .bigAnimal: 2,
                    .photographer: 1
                ]
            ),
            Answer(
                text: "Mir sind die Fische egal, solange die Landschaft oder das Wrack faszinierend ist.",
                scores: [
                    .wreck: 2,
                    .adventure: 2
                ]
            )
        ],
        maxSelections: 2,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),

    Question(
        id: 13,
        type: .multipleChoice,
        question: "Welche Fähigkeiten möchtest du in deiner Tauchkarriere weiter verbessern?",
        answers: [
            Answer(
                text: "Perfektes Ausleuchten und Bildkomposition unter Wasser.",
                scores: [
                    .photographer: 3
                ]
            ),
            Answer(
                text: "Wrack-Penetration und Verlegen von Guides.",
                scores: [
                    .wreck: 3,
                    .adventure: 1
                ]
            ),
            Answer(
                text: "Strömungstauchen und Haken-Techniken.",
                scores: [
                    .bigAnimal: 2,
                    .adventure: 2
                ]
            ),
            Answer(
                text: "Extrem sparsamer Luftverbrauch und minimale Bewegung.",
                scores: [
                    .relaxed: 3
                ]
            ),
            Answer(
                text: "Orientierung in unbekanntem und anspruchsvollem Terrain.",
                scores: [
                    .adventure: 3
                ]
            ),
            Answer(
                text: "Präzise Identifikation seltenster Kleinlebewesen.",
                scores: [
                    .macro: 3
                ]
            )
        ],
        maxSelections: 2,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),

    Question(
        id: 14,
        type: .multipleChoice,
        question: "Welche Tauchkurse stehen auf deiner Wunschliste ganz oben?",
        answers: [
            Answer(
                text: "Wreck Diver / Technical Wreck.",
                scores: [
                    .wreck: 3
                ]
            ),
            Answer(
                text: "Underwater Photography / Videography.",
                scores: [
                    .photographer: 3
                ]
            ),
            Answer(
                text: "Deep Diver / Cavern / Advanced Adventure.",
                scores: [
                    .adventure: 3,
                    .wreck: 1
                ]
            ),
            Answer(
                text: "Peak Performance Buoyancy / Sidemount (für müheloses Gleiten).",
                scores: [
                    .relaxed: 3,
                    .adventure: 1
                ]
            ),
            Answer(
                text: "Marine Life Species Identification / Macro Specialty.",
                scores: [
                    .macro: 3
                ]
            ),
            Answer(
                text: "Shark Conservation / Marine Ecology.",
                scores: [
                    .bigAnimal: 3
                ]
            )
        ],
        maxSelections: 2,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),

    Question(
        id: 15,
        type: .multipleChoice,
        question: "Welche Ausrüstungsgegenstände reizen dich am meisten?",
        answers: [
            Answer(
                text: "Ein Unterwassergehäuse mit externen Blitzen und Fokuslicht.",
                scores: [
                    .photographer: 3
                ]
            ),
            Answer(
                text: "Doppelflaschen, Stage-Flaschen und Hartenhelm-Setups.",
                scores: [
                    .wreck: 3,
                    .adventure: 1
                ]
            ),
            Answer(
                text: "Eine High-End Lupe und eine Unterwasser-Abtastnadel.",
                scores: [
                    .macro: 3
                ]
            ),
            Answer(
                text: "Ein extrem leichtes Reise-Set für maximalen Komfort.",
                scores: [
                    .relaxed: 3
                ]
            ),
            Answer(
                text: "Scooter (DPV) und Spezial-Schneidwerkzeuge.",
                scores: [
                    .adventure: 3,
                    .wreck: 1
                ]
            ),
            Answer(
                text: "Ein Strömungshaken und eine Signalboje für das freie Blauwasser.",
                scores: [
                    .bigAnimal: 3,
                    .adventure: 1
                ]
            )
        ],
        maxSelections: 2,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),

    Question(
        id: 16,
        type: .multipleChoice,
        question: "Was veranlasst dich dazu, bei einem Tauchgang sofort stehenzubleiben?",
        answers: [
            Answer(
                text: "Ein rostiges Maschinenteil oder ein offener Frachtraum.",
                scores: [
                    .wreck: 3
                ]
            ),
            Answer(
                text: "Ein winziger Punkt auf einer Koralle, der sich bewegt.",
                scores: [
                    .macro: 3
                ]
            ),
            Answer(
                text: "Die perfekte Kulisse aus Sonnenstrahlen und Felsformationen.",
                scores: [
                    .photographer: 3,
                    .adventure: 1
                ]
            ),
            Answer(
                text: "Ein vorbeiziehender Mantarochen.",
                scores: [
                    .bigAnimal: 3
                ]
            ),
            Answer(
                text: "Ein unentdeckter Tunnel oder eine dunkle Spalte.",
                scores: [
                    .adventure: 3,
                    .wreck: 1
                ]
            ),
            Answer(
                text: "Einfach das Gefühl, im Schwebezustand die Ruhe zu genießen.",
                scores: [
                    .relaxed: 3
                ]
            )
        ],
        maxSelections: 2,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),

    Question(
        id: 17,
        type: .multipleChoice,
        question: "Wie sieht dein idealer Tauchtag aus?",
        answers: [
            Answer(
                text: "2 lange, flache Tauchgänge ohne Strömung und viel Zeit zum Relaxen an Deck.",
                scores: [
                    .relaxed: 3
                ]
            ),
            Answer(
                text: "3 strukturierte Tauchgänge mit Kamera-Akkuwechsel und Bildkontrolle am Laptop.",
                scores: [
                    .photographer: 3
                ]
            ),
            Answer(
                text: "Ein spektakulärer Tauchgang an einem strömungsreichen Außenriff mit Großfischgarantie.",
                scores: [
                    .bigAnimal: 3,
                    .adventure: 1
                ]
            ),
            Answer(
                text: "Ein anspruchsvoller Tauchgang an einem tiefen, legendären Wrack.",
                scores: [
                    .wreck: 3,
                    .adventure: 1
                ]
            ),
            Answer(
                text: "Ein Erkundungstauchgang an einem Spot, an dem kaum jemand vorher war.",
                scores: [
                    .adventure: 3
                ]
            ),
            Answer(
                text: "Ein Nachttauchgang, fokussiert auf die Suche nach seltenen kleinen Lebewesen.",
                scores: [
                    .macro: 3,
                    .adventure: 1
                ]
            )
        ],
        maxSelections: 2,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),

    Question(
        id: 18,
        type: .multipleChoice,
        question: "Welche Gefahren/Herausforderungen nimmst du für einen guten Tauchgang in Kauf?",
        answers: [
            Answer(
                text: "Starke Strömung und Wellengang im offenen Ozean.",
                scores: [
                    .bigAnimal: 2,
                    .adventure: 2
                ]
            ),
            Answer(
                text: "Enge Räume, Dunkelheit und Rost im Wrackinneren.",
                scores: [
                    .wreck: 3,
                    .adventure: 1
                ]
            ),
            Answer(
                text: "Kaltes Wasser und lange Wartezeiten für das eine perfekte Motiv.",
                scores: [
                    .photographer: 3
                ]
            ),
            Answer(
                text: "Sehr frühes Aufstehen und anstrengende Fußmärsche zu abgelegenen Spots.",
                scores: [
                    .adventure: 3
                ]
            ),
            Answer(
                text: "Geduldiges Absuchen von Sedimentflächen bei minimaler Sicht.",
                scores: [
                    .macro: 3
                ]
            ),
            Answer(
                text: "Keine – Sicherheit und Entspannung stehen bei mir immer an erster Stelle.",
                scores: [
                    .relaxed: 3
                ]
            )
        ],
        maxSelections: 2,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),

    Question(
        id: 19,
        type: .multipleChoice,
        question: "Welches Social-Media-Bild würdest du nach dem Urlaub am ehesten posten?",
        answers: [
            Answer(
                text: "Ein knackig scharfes Nahaufnahme-Portrait einer bunten Schnecke.",
                scores: [
                    .macro: 3,
                    .photographer: 2
                ]
            ),
            Answer(
                text: "Ein Selfie vor einem imposanten Schiffspropeller.",
                scores: [
                    .wreck: 3
                ]
            ),
            Answer(
                text: "Ein Weitwinkelbild mit einem Hai direkt vor der Linse.",
                scores: [
                    .bigAnimal: 3,
                    .photographer: 1
                ]
            ),
            Answer(
                text: "Eine Aufnahme von mir, wie ich völlig entspannt im blauen Wasser schwebe.",
                scores: [
                    .relaxed: 3
                ]
            ),
            Answer(
                text: "Ein spektakuläres Foto von einer Steilwand oder einer Höhle.",
                scores: [
                    .adventure: 3,
                    .photographer: 1
                ]
            ),
            Answer(
                text: "Mein komplettes Kamera-Setup auf dem Boot.",
                scores: [
                    .photographer: 3
                ]
            )
        ],
        maxSelections: 2,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),

    Question(
        id: 20,
        type: .multipleChoice,
        question: "Was ist für dich die grösste Belohnung nach einem Tauchgang?",
        answers: [
            Answer(
                text: "Das Auswerten der geschossenen Bilder am Monitor.",
                scores: [
                    .photographer: 3
                ]
            ),
            Answer(
                text: "Das Adrenalin und das Gefühl, ein Abenteuer gemeistert zu haben.",
                scores: [
                    .adventure: 3
                ]
            ),
            Answer(
                text: "Das Erleben von imposanten Begegnungen mit der Natur.",
                scores: [
                    .bigAnimal: 3
                ]
            ),
            Answer(
                text: "Das Wissen, etwas Historisches mit eigenen Augen gesehen zu haben.",
                scores: [
                    .wreck: 3
                ]
            ),
            Answer(
                text: "Die tiefe innere Ruhe und Erholung nach dem Auftauchen.",
                scores: [
                    .relaxed: 3
                ]
            ),
            Answer(
                text: "Die Freude, eine extrem seltene Spezies entdeckt zu haben.",
                scores: [
                    .macro: 3
                ]
            )
        ],
        maxSelections: 2,
        minValue: nil,
        maxValue: nil,
        statement: nil,
        scaleScores: [:]
    ),

    Question(
        id: 21,
        type: .scale,
        question: "Fotografische Motivation",
        answers: [],
        maxSelections: nil,
        minValue: 0,
        maxValue: 5,
        statement: "Ich verbringe gerne 15 Minuten an derselben Koralle, nur um den richtigen Winkel für ein einziges Bild zu bekommen.",
        scaleScores: [
            .photographer: 1.0,
            .macro: 0.25
        ]
    ),

    Question(
        id: 22,
        type: .scale,
        question: "Historische Faszination",
        answers: [],
        maxSelections: nil,
        minValue: 0,
        maxValue: 5,
        statement: "Mich faszinieren von Menschen geschaffene Strukturen, alte Schiffe und historische Artefakte unter Wasser mehr als reine Naturriffe.",
        scaleScores: [
            .wreck: 1.0,
            .adventure: 0.25
        ]
    ),

    Question(
        id: 23,
        type: .scale,
        question: "Faszination für Meeressäuger & Großfische",
        answers: [],
        maxSelections: nil,
        minValue: 0,
        maxValue: 5,
        statement: "Ein Tauchgang ohne Hai, Rochen oder Walhai ist für mich nur halb so aufregend.",
        scaleScores: [
            .bigAnimal: 1.0,
            .adventure: 0.25
        ]
    ),

    Question(
        id: 24,
        type: .scale,
        question: "Blick fürs Detail",
        answers: [],
        maxSelections: nil,
        minValue: 0,
        maxValue: 5,
        statement: "Ich habe mehr Freude daran, eine 5 mm kleine Nacktschnecke zu entdecken als eine Schule großer Fische.",
        scaleScores: [
            .macro: 1.0,
            .photographer: 0.25
        ]
    ),

    Question(
        id: 25,
        type: .scale,
        question: "Ruhe & Schwerelosigkeit",
        answers: [],
        maxSelections: nil,
        minValue: 0,
        maxValue: 5,
        statement: "Das Hauptziel beim Tauchen ist für mich Abschalten, Entspannen und die Schwerelosigkeit ohne Hektik zu genießen.",
        scaleScores: [
            .relaxed: 1.0
        ]
    ),

    Question(
        id: 26,
        type: .scale,
        question: "Abenteuerlust & Nervenkitzel",
        answers: [],
        maxSelections: nil,
        minValue: 0,
        maxValue: 5,
        statement: "Ich liebe es, neue, unwegsame Tauchplätze zu erkunden, durch Höhlen zu tauchen oder Strömungen zu trotzen.",
        scaleScores: [
            .adventure: 1.0,
            .wreck: 0.25,
            .bigAnimal: 0.25
        ]
    ),

    Question(
        id: 27,
        type: .scale,
        question: "Bereitschaft für schweres Equipment",
        answers: [],
        maxSelections: nil,
        minValue: 0,
        maxValue: 5,
        statement: "Ich nehme gerne aufwendiges Zusatzequipment (Kameras, Lampen, Zusatztanks) in Kauf, um mein Tauchziel zu erreichen.",
        scaleScores: [
            .photographer: 0.5,
            .wreck: 0.5,
            .adventure: 0.5
        ]
    ),

    Question(
        id: 28,
        type: .scale,
        question: "Faszination für das Unbekannte / Dunkle",
        answers: [],
        maxSelections: nil,
        minValue: 0,
        maxValue: 5,
        statement: "In enge, dunkle oder geschlossene Räume (Wracks, Höhlen, Riffspalten) hineinzutauchen weckt meine Neugier.",
        scaleScores: [
            .adventure: 1.0,
            .wreck: 0.75,
            .macro: 0.25
        ]
    ),

    Question(
        id: 29,
        type: .scale,
        question: "Fokus auf Tiere im Blauwasser",
        answers: [],
        maxSelections: nil,
        minValue: 0,
        maxValue: 5,
        statement: "Ich verbringe gerne den gesamten Tauchgang im freien Wasser, solange die Chance besteht, Großtiere zu sehen.",
        scaleScores: [
            .bigAnimal: 1.0,
            .adventure: 0.25
        ]
    ),

    Question(
        id: 30,
        type: .scale,
        question: "Minimalismus & Anstrengungsvermeidung",
        answers: [],
        maxSelections: nil,
        minValue: 0,
        maxValue: 5,
        statement: "Anstrengung unter Wasser versuche ich strikt zu vermeiden – je einfacher und flacher der Tauchgang, desto besser.",
        scaleScores: [
            .relaxed: 1.0
        ]
    )
]
