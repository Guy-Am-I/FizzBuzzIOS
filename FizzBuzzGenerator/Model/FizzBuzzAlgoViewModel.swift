//
//  FizzBuzzAlgoViewModel.swift
//  FizzBuzzGenerator
//
//  Created by Guy Steinberg on 2024-04-16.
//

import Foundation

class FizzBuzzAlgoViewModel: ObservableObject {
    @Published var fizzBuzzModels: [FizzBuzzAlgoModel] = []
    
    init() {
        fizzBuzzModels = [
            .init(name: "Swift", 
                  maxConstDef: "let MAX = 100",
                  loopFunc: { code in
                  """
                    for i in 1...Max {
                        \(code)
                    }
                  """},
                  ifFunc: { logic, code in
                  """
                  if \(logic) {
                    \(code)
                  }
                  """
                  },
                  elseIfFunc: { logic, code in
                  """
                  else if \(logic) {
                    \(code)
                  }
                  """
                  },
                  elseFunc: { code in
                  """
                  else {
                      \(code)
                  }
                  """
                  },
                  printFunc: { str in
                      #"print("\#(str)\t", terminator: "")"#
                  },
                  printIdxFunc: {
                      #"print("\(i)\t", terminator: "")"#
                  }),
            .init(name: "C",
                  versionNumber: 1.0,
                  imports: "#include <stdio.h>",
                  maxConstDef: "#define MAX 100",
                  boilerplate: { code in
                  """
                  int main() {
                    \(code)
                  }
                  """
                  },
                  loopFunc: { code in
                  """
                    for(int i = 1; i <= MAX; ++i) {
                        \(code.indent())
                    }
                  """},
                  ifFunc: { logic, code in
                  """
                  if (\(logic)) {
                    \(code)
                  }
                  """
                  },
                  elseIfFunc: { logic, code in
                  """
                  else if (\(logic)) {
                    \(code)
                  }
                  """
                  },
                  elseFunc: { code in
                  """
                  else {
                      \(code)
                  }
                  """
                  },
                  printFunc: { str in
                      #"printf("\#(str)\t");"#
                  },
                  printIdxFunc: {
                      #"printf("%d\t", i);"#
                  }),
            .init(name: "C++",
                  versionNumber: 1.0,
                  imports: "#include <iostream>",
                  maxConstDef: "const int MAX = 100;",
                  boilerplate: { code in
                  """
                  int main() {
                    \(code)
                  }
                  """
                  },
                  loopFunc: { code in
                  """
                    for(int i = 1; i <= MAX; ++i) {
                        \(code.indent())
                    }
                  """},
                  ifFunc: { logic, code in
                  """
                  if (\(logic)) {
                    \(code)
                  }
                  """
                  },
                  elseIfFunc: { logic, code in
                  """
                  else if (\(logic)) {
                    \(code)
                  }
                  """
                  },
                  elseFunc: { code in
                  """
                  else {
                      \(code)
                  }
                  """
                  },
                  printFunc: { str in
                      #"std::cout << \#(str)\t << std::endl;"#
                  },
                  printIdxFunc: {
                      #"std::cout << i\t << std::endl;"#
                  }),
            .init(name: "Python",
                  maxConstDef: "MAX = 100",
                  commentCode: { code in return #"# "# + code},
                  loopFunc: { code in
                  """
                    for i in range(1, MAX):
                        \(code)
                  """},
                  ifFunc: { logic, code in
                  """
                  if \(logic):
                    \(code)
                  """
                  },
                  elseIfFunc: { logic, code in
                  """
                  elif \(logic):
                    \(code)
                  """
                  },
                  elseFunc: { code in
                  """
                  else:
                      \(code)
                  """
                  },
                  printFunc: { str in
                      #"print("\#(str)\t", end = '')"#
                  },
                  printIdxFunc: {
                      #"print(f"{i}\t", end='')"#
                  }),
        ]
    }
}
