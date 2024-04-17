//
//  FizzBuzzAlgoModel.swift
//  FizzBuzzGenerator
//
//  Created by Guy Steinberg on 2024-04-16.
//

import Foundation

enum function {
    case zeroArgFunc(() -> String)
    case oneArgFunc((String) -> String)
    case twoArgFunc((String, String) -> String)
}


struct FizzBuzzAlgoModel: Identifiable {
    let id = UUID()
    
    let name: String
    var versionNumber: Double? = nil
    var imports: String = ""
    let maxConstDef: String
    var commentCode: (String) -> String = {"\\*" + $0 + "*\\"}
    var boilerplate: function = .oneArgFunc{$0}
    
    let equals = "=="
    let modulo = "%"
    
    var loopFunc: function
    var ifFunc: function
    var elseIfFunc: function
    var elseFunc: function
    var printFunc: function
    var printIdxFunc: function
    
    var fizzBuzzCode: String {
        "CODE: \(name)"
    }
}
