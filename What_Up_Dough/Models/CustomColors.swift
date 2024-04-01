//
//  CustomColors.swift
//  What_Up_Dough
//
//  Created by Jacob Best on 9/20/23.
//

import Foundation
import SwiftUI

//    Future Colors
//    static let neuBackground = Color(hex: "f0f0f3")
//    static let dropShadow = Color(hex: "aeaec0").opacity(0.4)
//    static let dropLight = Color(hex: "ffffff")
//    static let innerShadow = Color(hex: "aeaec0").opacity(0.25)
//    static let darkGray = Color(hex: "797979")
//    static let lightDarkGray = Color(hex: "909090")
//    static let darkLightGray = Color(hex: "A8A8A8")
//    static let lightGray = Color(hex: "C0C0C0")
//    static let titaniumLight = Color(hex: "bad9cd")
//    static let titaniumDark = Color(hex: "455f63")

extension Color {
    static let tealGreen = Color(hex: "005a5a")
    static let blueGreen = Color(hex: "6df3f3")
    static let turquoise = Color(hex:"40e0d0")
    static let paleTurquoise = Color(hex:"afeeee")
    static let brightTurquoise = Color(hex:"08e8de")
    static let darkTurquoise = Color(hex:"00ced1")
    static let aqua = Color(hex:"00FFFF")
    static let aquamarine = Color(hex:"7fffd4")
    static let myTeal = Color(hex: "008080")
    static let nearWhite = Color(hex:"e0e0e0")
    static let darkLightGray = Color(hex: "A8A8A8")
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        print(r)
        let g = (rgbValue & 0xff00) >> 8
        print(g)
        let b = rgbValue & 0xff
        print(b)
        
        self.init(red: Double(r) / 0xff, green: Double(g) / 0xff, blue: Double(b) / 0xff)
    }
}

