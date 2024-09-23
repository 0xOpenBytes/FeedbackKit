//
//  File.swift
//  
//
//  Created by Ahmed Shendy on 30/04/2024.
//

import SwiftUI

public struct FeedbackStateIcon: View {
    let state: FeedbackState

    public var body: some View {
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
        .font(.body.weight(.bold))
    }
}

