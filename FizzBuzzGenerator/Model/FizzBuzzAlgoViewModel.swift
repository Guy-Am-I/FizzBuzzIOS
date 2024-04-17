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
                  loopFunc: .oneArgFunc{ code in
                  """
                    for i in 1...Max {
                        \(code)
                    }
                  """},
                  ifFunc: .twoArgFunc { logic, code in
                  """
                  if \(logic) {
                    \(code)
                  }
                  """
                  },
                  elseIfFunc: .twoArgFunc { logic, code in
                  """
                  else if \(logic) {
                    \(code)
                  }
                  """
                  },
                  elseFunc: .oneArgFunc { code in
                  """
                  else {
                      \(code)
                  }
                  """
                  },
                  printFunc: .oneArgFunc { str in
                      #"print("\#(str)\t", terminator: "")"#
                  },
                  printIdxFunc: .zeroArgFunc {
                      #"print("\(i)\t", terminator: "")"#
                  }),
            .init(name: "C",
                  versionNumber: 1.0,
                  imports: "#include <stdio.h>",
                  maxConstDef: "#define MAX 100",
                  boilerplate: .oneArgFunc { code in
                  """
                  int main() {
                    \(code)
                  }
                  """
                  },
                  loopFunc: .oneArgFunc{ code in
                  """
                    for(int i = 1; i <= MAX; ++i) {
                        \(code.indent())
                    }
                  """},
                  ifFunc: .twoArgFunc { logic, code in
                  """
                  if (\(logic)) {
                    \(code)
                  }
                  """
                  },
                  elseIfFunc: .twoArgFunc { logic, code in
                  """
                  else if (\(logic)) {
                    \(code)
                  }
                  """
                  },
                  elseFunc: .oneArgFunc { code in
                  """
                  else {
                      \(code)
                  }
                  """
                  },
                  printFunc: .oneArgFunc { str in
                      #"printf("\#(str)\t");"#
                  },
                  printIdxFunc: .zeroArgFunc {
                      #"printf("%d\t", i);"#
                  }),
            .init(name: "C++",
                  versionNumber: 1.0,
                  imports: "#include <iostream>",
                  maxConstDef: "const int MAX = 100;",
                  boilerplate: .oneArgFunc { code in
                  """
                  int main() {
                    \(code)
                  }
                  """
                  },
                  loopFunc: .oneArgFunc{ code in
                  """
                    for(int i = 1; i <= MAX; ++i) {
                        \(code.indent())
                    }
                  """},
                  ifFunc: .twoArgFunc { logic, code in
                  """
                  if (\(logic)) {
                    \(code)
                  }
                  """
                  },
                  elseIfFunc: .twoArgFunc { logic, code in
                  """
                  else if (\(logic)) {
                    \(code)
                  }
                  """
                  },
                  elseFunc: .oneArgFunc { code in
                  """
                  else {
                      \(code)
                  }
                  """
                  },
                  printFunc: .oneArgFunc { str in
                      #"std::cout << \#(str)\t << std::endl;"#
                  },
                  printIdxFunc: .zeroArgFunc {
                      #"std::cout << i\t << std::endl;"#
                  }),
            .init(name: "Python",
                  maxConstDef: "MAX = 100",
                  commentCode: { code in return #"# "# + code},
                  loopFunc: .oneArgFunc{ code in
                  """
                    for i in range(1, MAX):
                        \(code)
                  """},
                  ifFunc: .twoArgFunc { logic, code in
                  """
                  if \(logic):
                    \(code)
                  """
                  },
                  elseIfFunc: .twoArgFunc { logic, code in
                  """
                  elif \(logic):
                    \(code)
                  """
                  },
                  elseFunc: .oneArgFunc { code in
                  """
                  else:
                      \(code)
                  """
                  },
                  printFunc: .oneArgFunc { str in
                      #"print("\#(str)\t", end = '')"#
                  },
                  printIdxFunc: .zeroArgFunc {
                      #"print(f"{i}\t", end='')"#
                  }),
        ]
    }
}
