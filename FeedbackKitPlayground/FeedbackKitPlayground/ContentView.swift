//
//  ContentView.swift
//  FeedbackKitPlayground
//
//  Created by Ahmed Shendy on 24/04/2024.
//

import SwiftUI
import FeedbackKit

struct ContentView: View {
    var body: some View {
        VStack {
            FeedbackView()
            Spacer()
                .background(Color.yellow)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
