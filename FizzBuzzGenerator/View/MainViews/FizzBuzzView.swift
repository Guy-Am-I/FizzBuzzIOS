//
//  FizzBuzzView.swift
//  FizzBuzzGenerator
//
//  Created by Guy Steinberg on 2024-04-16.
//

import SwiftUI

struct FizzBuzzView: View {
    let MAX = 100
    var body: some View {
        ZStack {
            Color
                .red
                .opacity(0.4)
                .ignoresSafeArea()
            
            ScrollView {
                LazyVStack(spacing: 10) {
                    ForEach(0..<MAX, id: \.self) { i in
                        if i % 15 == 0 {
                            FormattedText(text: "FizzBuzz")
                        } else if i % 3 == 0  {
                            FormattedText(text: "Fizz")
                        } else if i % 5 == 0 {
                            FormattedText(text: "Buzz")
                        } else {
                            FormattedText(text: "\(i)")
                        }
                    }
                }
            }
        }
    }
}

struct FormattedText : View {
    let text: String
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundStyle(Color("AccentColor"))
    }
}

#Preview {
    FizzBuzzView()
}
