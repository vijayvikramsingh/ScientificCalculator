//
//  CalculatorViewModel.swift
//  ScientificCalculator
//
//  Created by vijay singh on 7/13/21.
//

import Foundation
import CalculatorUmbrella
import CalculatorUI

struct CalculatorViewModel {
    
    let calculatorFunctions = CalculatorFunctions()

    func evaluateTrigFunction(number: String, symbol: Character, trigSymbol: TrigSymbols)->String? {
        let numArray : [Substring] = number.split(separator: symbol)
        if numArray.count > 0 {
            let number1: Double! = Double(numArray[0])
            switch trigSymbol {
            case .Sin:
                return String(calculatorFunctions.signFunc(number1))
            case .Cos:
                return String(calculatorFunctions.cosFunc(number1))
            case .Tan:
                return String(calculatorFunctions.tanFunc(number1))
            }
        }
        
        return nil
    }

    func evaluateTwoDFunction(number: String, symbol: Character, twoDSymbol: TwoDSymbols)->String? {
        let numArray : [Substring] = number.split(separator: symbol)
        if numArray.count > 0 {
            let number1: Double! = Double(numArray[0])
            switch twoDSymbol {
            case .Square:
                return String(calculatorFunctions.square(number1))
            case .Root:
                return String(calculatorFunctions.root(number1))
            case .Log:
                return String(calculatorFunctions.logarithm(number1))
            case .Loge:
                return String(calculatorFunctions.loge(number1))
            case .Reverse:
                return String(calculatorFunctions.reverse(number1))
            }
        }
        
        return nil
    }

    func evaluateSimpleMathFunction(number: String, symbol: Character) -> String? {
                let numArray : [Substring] = number.split(separator: symbol)
        
                if numArray.count >= 2 && numArray[1].count > 0 {
                    var number1: Double! = Double(numArray[0])
                    let number2: Double! = Double(numArray[1])
        
                    switch  symbol {
                    case "+":
                        number1 = calculatorFunctions.add(number1, number2)
                        break
                    case "-":
                        if number.hasPrefix("-") {
                            number1 = -number1
                        }
                        number1 = calculatorFunctions.substract(number1, number2)
                        break
                    case "*":
                        number1 = calculatorFunctions.multiply(number1, number2)
                        break
                    case "/":
                        number1 = calculatorFunctions.divide(number1, number2)
                        break
        
                    default:
                        number1 = calculatorFunctions.add(number1, number2)
                    }
                    return String(number1)
                }
        return nil
    }

}
