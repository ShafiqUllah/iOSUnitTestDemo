//
//  CalculationTests.swift
//  TipCalculatorTests
//
//  Created by Shafiq  Ullah on 11/12/24.
//

import XCTest
@testable import TipCalculator

class CalculationTests: XCTestCase {

    func testSuccessfulTipCalculation(){
        // Given(arrange)
        let enteredAmout = 100.0
        let tipAmount = 25.0
        let calculation = Calculation()
    
        //When (act)
        let tip = calculation.calculateTip(of: enteredAmout, with: tipAmount)
        
        //Then(Assert)
        XCTAssertEqual(tip, 25.0)
    }
    
    func testNegativeEnteredAmountTipCalculator(){
        // Given(arrange)
        let enteredAmout = -100.0
        let tipAmount = 25.0
        let calculation = Calculation()
    
        //When (act)
        let tip = calculation.calculateTip(of: enteredAmout, with: tipAmount)
        
        //Then(Assert)
        XCTAssertNil(tip)
    }
    
    func testNegativeEnteredTipAmountTipCalculator(){
        // Given(arrange)
        let enteredAmout = 100.0
        let tipAmount = -25.0
        let calculation = Calculation()
    
        //When (act)
        let tip = calculation.calculateTip(of: enteredAmout, with: tipAmount)
        
        //Then(Assert)
        XCTAssertNil(tip)
    }

}
