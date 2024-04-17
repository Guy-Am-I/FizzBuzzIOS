//
//  FizzBuzzAlgoModel.swift
//  FizzBuzzGenerator
//
//  Created by Guy Steinberg on 2024-04-16.
//

import Foundation


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
    
    var loopFunc: () -> String
    var ifFunc: ((String, String) -> String)
    var elseIfFunc: ((String, String) -> String)
    var elseFunc: (String) -> String
    var printFunc: (String) -> String
    var printIdxFunc: () -> String
    
    var fizzBuzzCode: String {
        let mod3 = "i \(modulo) 3 \(equals) 0"
        let codeFizz = printFunc("Fizz")
        
        let mod5 = "i \(modulo) 5 \(equals) 0"
        let codeBuzz = printFunc("Buzz")
        
        let mod15 = "i \(modulo) 3 \(equals) 0"
        let codeFizzBuzz = printFunc("FizzBuzz")
        
        let printInt = printInt()
        let codeInLoop = """
        \(ifFunc(mod15, codeFizzBuzz))
            \(elseIfFunc(mod3, codeFizz.indent()))
            \(elseIfFunc(mod5, codeBuzz.indent()))
            \(elseFunc(printInt.indent()))
        """
        
        let mainCode = """
        \(maxConstDef)
        
        \(loopFunc(codeInLoop))
        """
        
        var ver = ""
        if let versionNumber = versionNumber {
            ver = " implementation Version \(ver)"
        }
        
        return """
            \(commentCode("FizzBuzz\(ver) is implemented in the \(name) programming language."))
        \(imports)
        \(boilerplate(mainCode))
        """
    }
}
