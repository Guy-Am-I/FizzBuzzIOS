//
//  FizzBuzzView.swift
//  FizzBuzzGenerator
//
//  Created by Guy Steinberg on 2024-04-16.
//

import SwiftUI

struct FizzBuzzView: View {
    var body: some View {
        ZStack {
            Color
                .red
                .opacity(0.4)
                .ignoresSafeArea()
            
            Text("FizzBuzz")
        }
    }
}

#Preview {
    FizzBuzzView()
}
