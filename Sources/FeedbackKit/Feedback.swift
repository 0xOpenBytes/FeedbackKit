import Foundation

struct Feedback: Codable, Identifiable {
    let id: UUID
    let type: FeedbackType
    let title: String
    let description: String
}
