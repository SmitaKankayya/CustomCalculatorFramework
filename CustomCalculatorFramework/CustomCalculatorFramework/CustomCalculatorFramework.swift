//
//  CustomCalculatorFramework.swift
//  CustomCalculatorFramework
//
//  Created by Smita Kankayya on 16/05/24.
//

import Foundation

public class CustomCalculatorFramework {
    
    public var numberOnScreen: Double = 0
    public var previousNumber: Double = 0
    public var performingMath = false
    public var operation = 0
    
    public init() {}
    
    public func performOperation(tag: Int, resultLabel: inout String){
        switch tag {
            
        case 1...10:
            if performingMath {
                resultLabel = String(tag - 1)
                numberOnScreen = Double(tag - 1)
                performingMath = false
            } else {
                resultLabel += String(tag - 1 )
                numberOnScreen = Double(resultLabel)!
            }
            
        case 11...14:
            previousNumber =  Double(resultLabel)!
            operation = tag
            switch operation {
            case 11: resultLabel = " + "
            case 12: resultLabel = " - "
            case 13: resultLabel = " * "
            case 14: resultLabel = " / "
            default: break
            }
            performingMath = true
            
        case 15:
            switch operation {
            case 11: resultLabel = String(previousNumber + numberOnScreen)
            case 12: resultLabel = String(previousNumber - numberOnScreen)
            case 13: resultLabel = String(previousNumber * numberOnScreen)
            case 14:
                if numberOnScreen != 0 {
                    resultLabel = String(previousNumber / numberOnScreen)
                } else {
                    resultLabel = "Error"
                }
            default: break
            }
            
        case 16:
            resultLabel = ""
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
        default:
            resultLabel = "Error"
            break
        }
    }
}
