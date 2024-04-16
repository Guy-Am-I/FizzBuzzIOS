//
//  BackgroundImgView.swift
//  FizzBuzzGenerator
//
//  Created by Guy Steinberg on 2024-04-16.
//

import SwiftUI

struct BackgroundImgView: View {
    var body: some View {
        AsyncImage(url: URL(string: getImageLink()), transaction: Transaction(animation: .default))
        { phase in
            switch phase {
            case .success(let img):
                GeometryReader { geo in
                    img
                        .resizable()
                        .scaledToFill()
                        .blur(radius: 10)
                        .frame(maxWidth: geo.size.width, maxHeight: geo.size.height)
                        //.ignoresSafeArea()
                }
            default:
                Color.accentColor.opacity(0.3).ignoresSafeArea()
            }
        }
    }
    
    func getImageLink() -> String {
        return imageLinksBank.randomElement()!
    }
}

#Preview {
    BackgroundImgView()
}
