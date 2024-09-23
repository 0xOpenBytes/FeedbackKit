import SwiftUI

public struct FeedbackView: View {
    public init() { }
    public var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(Feedback.samples) { item in
                    FeedbackItem(item)

                    if item != Feedback.samples.last {
                        Divider()
                    }
                }
            }
        }
        .fixedSize(horizontal: false, vertical: true)
        .clipShape(RoundedRectangle(cornerRadius: 5))
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .inset(by: 1)
                .strokeBorder(
                    Color(red: 0.255, green: 0.255, blue: 0.255),
                    lineWidth: 1,
                    antialiased: true
                )
        )
    }
}
