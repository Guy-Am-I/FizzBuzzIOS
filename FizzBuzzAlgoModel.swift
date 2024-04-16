//
//  FizzBuzzAlgoModel.swift
//  FizzBuzzGenerator
//
//  Created by Guy Steinberg on 2024-04-16.
//

import Foundation

enum operatorSym {
    case equality(String)
    case modulo(String)
}

enum functions {
    case loopWrapper((String) -> String)
    case ifStatement((String, String) -> String)
    case elseIfStatement((String, String) -> String)
    case elseStatement((String) -> String)
    case printString((String) -> String)
    case printInt(() -> String)
}


struct FizzBuzzAlgoModel: Identifiable {
    let id = UUID()
    
    let name: String
    let maxConstDef: String
    var versionNumber: Double? = nil
    var commentCode: (String) -> String = {"\\*" + $0 + "*\\"}
    var boilerplate: (String) -> String = {$0}
    var imports: String = ""
    
    var fizzBuzzCode: String {
        "CODE: \(name)"
    }
}
