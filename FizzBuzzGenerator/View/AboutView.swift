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
            
            Text("""
                
                ***FizzBuzz Kata***
                ===========

                Source: [https://github.com/ardalis/kata-catalog](https://github.com/ardalis/kata-catalog)

                *Instructions*

                ```FizzBuzz is a simple number game in which you count, but replace certain numbers with the words "Fizz" and/or "Buzz", adhering to certain rules.```
                
                1. Create a FizzBuzz() method that prints out the numbers 1 through 100, separated by newlines.
                2. Instead of numbers divisible by 3, the method should output "Fizz".
                3. Instead of numbers divisible by 5, the method should output "Buzz".
                4. Instead of numbers divisible by 3 and 5, the method should output "FizzBuzz".

                ***Sample Output:***
                    1
                    2
                    Fizz
                    4
                    Buzz
                    Fizz
                    7
                    8
                    Fizz
                    Buzz
                    11
                    Fizz
                    13
                    14
                    FizzBuzz
                    16

                ## Extra Credit ##
                - Instead of numbers with a three in them, print "Fizz".
                - Instead of numbers with a five in them, print "Buzz".
                - Instead of numbers with a three and a five in them, print "FizzBuzz".
                """)
            .font(.title3)
            .multilineTextAlignment(.leading)
            .minimumScaleFactor(0.1)
            .padding()
        }
    }
}

#Preview {
    AboutView()
}
