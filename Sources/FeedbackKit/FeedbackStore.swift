import AppState
import Cache
import Foundation

extension Application {
    @MainActor
    fileprivate var storedFeedback: FileState<[UUID: Feedback]> {
        fileState(initial: [:], filename: "storedFeedback")
    }
}

class FeedbackStore: ObservableObject {
    enum StoreError: Error {
        case missingValue
    }

    @FileState(\.storedFeedback) private var storedFeedback: [UUID: Feedback]

    func `set`(feedback: Feedback) {
        storedFeedback[feedback.id] = feedback
    }

    func `get`(id: UUID) -> Feedback? {
        storedFeedback[id]
    }

    func remove(id: UUID) {
        storedFeedback[id] = nil
    }

    func update(id: UUID, _ block: (Feedback) -> Feedback) throws {
        guard let storedValue = get(id: id) else {
            throw StoreError.missingValue
        }

        set(feedback: block(storedValue))
    }

    func all() -> [Feedback] {
        Array(storedFeedback.values)
    }
}
