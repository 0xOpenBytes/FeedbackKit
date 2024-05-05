import Combine
import SwiftUI

class FeedbackViewModel: ObservableObject {
    private var bag: Set<AnyCancellable>

    private let store: FeedbackStore

    var feedback: [Feedback]

    init() {
        bag = Set()
        store = FeedbackStore()
        feedback = store.all()

        consume(object: store)
    }

    private func consume<Object: ObservableObject>(
        object: Object
    ) where ObjectWillChangePublisher == ObservableObjectPublisher {
        bag.insert(
            object.objectWillChange.sink(
                receiveCompletion: { _ in },
                receiveValue: { [weak self] _ in
                    self?.objectWillChange.send()
                }
            )
        )
    }
}
