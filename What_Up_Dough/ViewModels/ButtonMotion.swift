//
//  ButtonMotion.swift
//  What_Up_Dough
//
//  Created by Jacob Best on 10/2/23.
//

import Foundation
import CoreMotion
import SwiftUI

class MotionManager: ObservableObject {
    private let motionManager = CMMotionManager()
    @Published var x: Double = 0.0
    @Published var y: Double = 0.0
    
    init(number: Int) {
        motionManager.deviceMotionUpdateInterval = Double(1 / number)
        
        motionManager.startDeviceMotionUpdates(to: .main) { [weak self] data, error in
            guard let motion = data?.attitude else { return }
            self?.x = motion.pitch
            self?.y = motion.roll
        }
    }
    
    /*
     * When x = 0, we want gradient to consist of 100% the lightest color. this is equivalent to startValue of 0
     **/
    var tintColor: Color {
        switch (x) {
        case ..<(-1.5):
            return .turquoise
        case -1.5 ..< -1.0:
            return .paleTurquoise
        case -1.0 ..< -0.5:
            return .brightTurquoise
        case -0.5 ..< 0.5:
            return .myTeal
        case 0.5 ..< 1.0:
            return .darkTurquoise
        case 1.0...:
            return .aqua
        default:
            return .teal
        }
    }
}


