//
//  File.swift
//  
//
//  Created by Ahmed Shendy on 30/04/2024.
//

import SwiftUI

public struct FeedbackItem: View {
    let feedback: Feedback

    init(_ feedback: Feedback) {
        self.feedback = feedback
    }

    public var body: some View {
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
                    .font(.subheadline)
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
