//
//  AboutView.swift
//  FizzBuzzGenerator
//
//  Created by Guy Steinberg on 2024-04-16.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            Color
                .yellow
                .opacity(0.5)
                .ignoresSafeArea()
            
            Text("About us")
        }
    }
}

#Preview {
    AboutView()
}
