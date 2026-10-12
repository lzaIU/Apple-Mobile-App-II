import SwiftUI

struct RadarChartView: View {

    let scores: [DiverType: Double]

    private let levels = 4

    var body: some View {
        GeometryReader { proxy in

            let center = CGPoint(
                x: proxy.size.width / 2,
                y: proxy.size.height / 2
            )

            let radius = min(
                proxy.size.width,
                proxy.size.height
            ) * 0.30

            ZStack {

                ForEach(1...levels, id: \.self) { level in

                    RadarPolygon(
                        values: Array(
                            repeating: Double(level) / Double(levels),
                            count: DiverType.allCases.count
                        )
                    )
                    .stroke(
                        Color.customBorder,
                        lineWidth: 1
                    )
                    .frame(
                        width: radius * 2,
                        height: radius * 2
                    )
                }

                ForEach(
                    Array(DiverType.allCases.enumerated()),
                    id: \.offset
                ) { index, _ in

                    Path { path in

                        let point = pointFor(
                            index: index,
                            value: 1,
                            center: center,
                            radius: radius
                        )

                        path.move(to: center)
                        path.addLine(to: point)
                    }
                    .stroke(
                        Color.customBorder,
                        lineWidth: 1
                    )
                }

                RadarPolygon(values: normalizedValues)
                    .fill(
                        Color.teal.opacity(0.25)
                    )
                    .frame(
                        width: radius * 2,
                        height: radius * 2
                    )

                RadarPolygon(values: normalizedValues)
                    .stroke(
                        Color.teal,
                        lineWidth: 3
                    )
                    .frame(
                        width: radius * 2,
                        height: radius * 2
                    )

                ForEach(
                    Array(DiverType.allCases.enumerated()),
                    id: \.offset
                ) { index, _ in

                    let point = pointFor(
                        index: index,
                        value: normalizedValues[index],
                        center: center,
                        radius: radius
                    )

                    Circle()
                        .fill(Color.teal)
                        .frame(width: 9, height: 9)
                        .position(point)
                }

                ForEach(
                    Array(DiverType.allCases.enumerated()),
                    id: \.offset
                ) { index, type in

                    let labelPoint = pointFor(
                        index: index,
                        value: 1.25,
                        center: center,
                        radius: radius
                    )

                    VStack(spacing: 2) {

                        Text(type.profile.icon)
                            .font(.title3)

                        Text(shortName(for: type))
                            .font(.captionText)
                            .foregroundColor(.mainText)
                            .multilineTextAlignment(.center)
                    }
                    .position(labelPoint)
                }
            }
        }
    }

    private var normalizedValues: [Double] {

        let highestScore = max(
            scores.values.max() ?? 1,
            1
        )

        return DiverType.allCases.map { type in

            let score = scores[type] ?? 0

            return score / highestScore
        }
    }

    private func pointFor(
        index: Int,
        value: Double,
        center: CGPoint,
        radius: CGFloat
    ) -> CGPoint {

        let angle =
            (Double(index) *
             (2 * Double.pi / Double(DiverType.allCases.count)))
            - Double.pi / 2

        return CGPoint(
            x: center.x +
                CGFloat(cos(angle)) *
                radius *
                value,

            y: center.y +
                CGFloat(sin(angle)) *
                radius *
                value
        )
    }

    private func shortName(
        for type: DiverType
    ) -> String {

        switch type {

        case .photographer:
            return "Fotograf"

        case .wreck:
            return "Wrack"

        case .bigAnimal:
            return "Grossfische"

        case .macro:
            return "Makro"

        case .relaxed:
            return "Relaxed"

        case .adventure:
            return "Abenteuer"
        }
    }
}


struct RadarPolygon: Shape {

    let values: [Double]

    func path(in rect: CGRect) -> Path {

        let center = CGPoint(
            x: rect.midX,
            y: rect.midY
        )

        let radius = min(
            rect.width,
            rect.height
        ) / 2

        var path = Path()

        for index in values.indices {

            let angle =
                (Double(index) *
                 (2 * Double.pi / Double(values.count)))
                - Double.pi / 2

            let point = CGPoint(
                x: center.x +
                    CGFloat(cos(angle)) *
                    radius *
                    values[index],

                y: center.y +
                    CGFloat(sin(angle)) *
                    radius *
                    values[index]
            )

            if index == 0 {
                path.move(to: point)
            } else {
                path.addLine(to: point)
            }
        }

        path.closeSubpath()

        return path
    }
}


#Preview {

    RadarChartView(
        scores: [
            .photographer: 8,
            .wreck: 5,
            .bigAnimal: 10,
            .macro: 6,
            .relaxed: 4,
            .adventure: 7
        ]
    )
    .frame(height: 400)
    .padding()
    .background(Color.appBackground)
}
