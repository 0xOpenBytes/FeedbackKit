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

struct FeedbackItem: View {
    let feedback: Feedback

    init(_ feedback: Feedback) {
        self.feedback = feedback
    }

    var body: some View {
        HStack(alignment: .top) {

            FeedbackStateIcon(state: feedback.state)
            Spacer().frame(width: 5)

            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    FeedbackTitle(text: feedback.title)
                    Spacer()
                    HStack(spacing: 0) {
                        Image(systemName: "message")
                        Text("2")
                    }
                    .foregroundColor(.init(red: 0.518, green: 0.553, blue: 0.592))
                }

                Spacer().frame(height: 8)

                HStack(spacing: 0) {
                    Text("opened on May 18, 2023")
                        .font(.caption)
                        .foregroundColor(Color.gray)
                    Spacer()
                    FeedbackLabel(text: feedback.type.rawValue)
                }
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
    }
}

struct FeedbackStateIcon: View {
    let state: FeedbackState

    var body: some View {
        Group {
            switch state {
            case .open:
                Image(systemName: "smallcircle.filled.circle")
                    .foregroundColor(.green)
            case .closed:
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.blue)
            }
        }
        .font(.body)
    }
}

struct FeedbackTitle: View {
    let text: String

    var body: some View {
        Text(text)
            .font(.headline)
    }
}

struct FeedbackLabel: View {
    let text: String

    var body: some View {
        Text(text)
            .font(.caption)
            .fontWeight(.light)
            .foregroundColor(.white)
            .padding(.horizontal, 6)
            .background(Color.gray.opacity(0.5))
            .clipShape(Capsule(style: .continuous))
    }
}
