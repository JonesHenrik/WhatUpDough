//
//  Genre+Display.swift
//  What_Up_Dough
//
//  Created by Jacob Best on 9/25/23.
//

import Foundation
import SwiftUI

extension Genre {
    
    var diplayName: Text {
        switch self {
        case .Mexican:
            return Text("Mexican")
        case .Italian:
            return Text("Italian")
        case .American:
            return Text("American")
        case .Greek:
            return Text("Greek")
        case .Mediterranean:
            return Text("Mediterranean")
        case .Chinese:
            return Text("Chinese")
        case .Korean:
            return Text("Korean")
        case .Japanese:
            return Text("Japanese")
        case .European:
            return Text("European")
        }
    }
}
