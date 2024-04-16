//
//  FizzBuzzMainView.swift
//  FizzBuzzGenerator
//
//  Created by Guy Steinberg on 2024-04-16.
//

import SwiftUI

struct FizzBuzzMainView: View {
    var body: some View {
        TabView {
            FizzBuzzView()
                .tabItem {
                    Label("FizzBuzz", systemImage: "lasso.badge.sparkles")
                }
            CodeCreatorView()
                .tabItem {
                    Label("Code", systemImage: "laptopcomputer.and.arrow.down")
                }
            AboutView()
                .tabItem {
                    Label("About", systemImage: "info.bubble.fill")
                }
        }
    }
}

#Preview {
    FizzBuzzMainView()
}
