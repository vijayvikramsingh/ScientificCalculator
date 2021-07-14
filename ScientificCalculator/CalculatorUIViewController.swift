//
//  CalculatorViewController.swift
//  ScientificCalculator
//
//  Created by vijay singh on 7/13/21.
//

import UIKit
import CalculatorUI

class CalculatorUIViewController: UIViewController {

    let calculatorUIController = CalculatorViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        calculatorUIController.delegate = self
        calculatorUIController.view.frame = self.view.bounds
        self.view.addSubview(calculatorUIController.view)
    }

    override func viewDidAppear(_ animated: Bool) {
    }
    
}

extension CalculatorUIViewController: MathEvaluation {
    func evaluateTrigFunction(number: String, symbol: Character, trigSymbol: TrigSymbols)->String? {
        let model = CalculatorViewModel()
        return model.evaluateTrigFunction(number: number, symbol:symbol, trigSymbol: trigSymbol)
    }

    func evaluateTwoDFunction(number: String, symbol: Character, twoDSymbol: TwoDSymbols)->String? {
        let model = CalculatorViewModel()
        return model.evaluateTwoDFunction(number: number, symbol:symbol, twoDSymbol: twoDSymbol)
    }

    func evaluateSimpleMathFunction(number: String, symbol: Character) -> String? {
        let model = CalculatorViewModel()
        return model.evaluateSimpleMathFunction(number: number, symbol: symbol)
    }

}
