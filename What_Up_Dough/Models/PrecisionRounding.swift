//
//  PrecisionRounding.swift
//  What_Up_Dough
//
//  Created by Jacob Best on 10/4/23.
//

import Foundation

public enum RoundingPrecision {
    case ones
    case tenths
    case hundredths
    case thousandths
}

func preciseRound(_ value: Double, precision: RoundingPrecision = .ones) -> Double {
    switch precision {
    case .ones:
        return round(value)
    case .tenths:
        return round(value * 10) / 10.0
    case .hundredths:
        return round(value * 100) / 100.0
    case .thousandths:
        return round(value * 1000) / 1000.0
    }
}
