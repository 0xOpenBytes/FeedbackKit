//
//  File.swift
//  
//
//  Created by Ahmed Shendy on 30/04/2024.
//

import SwiftUI

public struct FeedbackLabel: View {
    let text: String

    public var body: some View {
        Text(text)
            .font(.caption2)
            .fontWeight(.light)
            .foregroundColor(.white)
            .padding(.horizontal, 6)
            .background(Color.gray.opacity(0.5))
            .clipShape(Capsule(style: .continuous))
    }
}

