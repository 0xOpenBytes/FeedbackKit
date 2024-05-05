struct Feedback: Identifiable, Hashable {
    var id: String { title }
    let type: FeedbackType
    let title: String
    let description: String
    let state: FeedbackState
}

extension Feedback {
    static var samples: [Feedback] {
        [
            .init(
                type: .bug,
                title: "We need an alternative when failed to create SQLite database using GRDB",
                description: "",
                state: .open
            ),
            .init(
                type: .feature,
                title: "[FEATURE]: Hook up search screen and favoriting functionality",
                description: "",
                state: .closed
            ),
            .init(
                type: .feature,
                title: "[FEATURE]: Sort search locations by distance from a location",
                description: "",
                state: .open
            ),
            .init(
                type: .feature,
                title: "[FEATURE]: Enhance weather information for detail view of a location",
                description: "",
                state: .open
            ),
        ]
    }
}

enum FeedbackState {
    case open
    case closed
}
