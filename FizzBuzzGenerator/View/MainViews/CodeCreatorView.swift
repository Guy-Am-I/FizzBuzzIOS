//
//  CodeCreatorView.swift
//  FizzBuzzGenerator
//
//  Created by Guy Steinberg on 2024-04-16.
//

import SwiftUI
import UniformTypeIdentifiers

struct CodeCreatorView: View {
    @StateObject var fizzBuzzAlgoViewModel: FizzBuzzAlgoViewModel = FizzBuzzAlgoViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color
                    .blue
                    .opacity(0.4)
                    .ignoresSafeArea()
                
                List(fizzBuzzAlgoViewModel.fizzBuzzModels) { code in
                    NavigationLink(code.name) {
                        CodeView(codeGen: code)
                    }
                }
            }
            .navigationTitle("Fizzy Buzzy")
        }
    }
}

struct CodeView: View {
    let codeGen: FizzBuzzAlgoModel
    var body: some View {
        ZStack {
            Color.gray.opacity(0.3).ignoresSafeArea()
            
            ScrollView {
                Text(codeGen.fizzBuzzCode)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding()
                    .minimumScaleFactor(0.1)
                    .contextMenu {
                        Button(action: {
                            UIPasteboard.general.string = codeGen.fizzBuzzCode
                        }, label: {
                            Text("Copy to clipboard")
                            Image(systemName: "doc.on.doc")
                        })
                    }
            }
        }
    }
}

#Preview {
    CodeCreatorView()
}
