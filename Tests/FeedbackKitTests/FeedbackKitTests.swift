import XCTest
@testable import FeedbackKit

@MainActor
final class FeedbackKitTests: XCTestCase {
    func testExample() throws {
        let store = FeedbackStore()

        let feedback = Feedback(type: .comment, title: "Cool", description: "Feedback", state: .open)

        store.set(feedback: feedback)

        let storedFeedback = try XCTUnwrap(store.get(id: feedback.id))

        XCTAssertEqual(storedFeedback.type, storedFeedback.type)
        XCTAssertEqual(storedFeedback.title, storedFeedback.title)
        XCTAssertEqual(storedFeedback.description, storedFeedback.description)
        XCTAssertEqual(storedFeedback.state, storedFeedback.state)
    }
}
