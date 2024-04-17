//
//  StringExtensions.swift
//  FizzBuzzGenerator
//
//  Created by Guy Steinberg on 2024-04-16.
//

import Foundation

extension String {
    func indent() -> String {
        var result = ""
        let linesList = self.split(separator: "\n")
        linesList.forEach {
            result += "\t\($0)\n"
        }
        return String(result.dropLast())
    }
}
