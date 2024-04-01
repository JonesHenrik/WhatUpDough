//
//  ButtonView.swift
//  What_Up_Dough
//
//  Created by Jacob Best on 9/25/23.
//

import SwiftUI
import CoreMotion

struct ButtonView: View {
    @EnvironmentObject private var motion: MotionManager
    
    var buttonLabel: String
    
    var body: some View {
        // Define the angles in which start and end the gradient
        let startAngle: Angle = Angle(degrees: -(motion.x * (180.0 / Double.pi))*2)
        let endAngle: Angle = Angle(degrees: 180 + (motion.y * (180.0 / Double.pi)))
        
        Circle()
            .strokeBorder(
                AngularGradient(
                    gradient: Gradient(
                        colors: [
                            .tealGreen,
                            .blueGreen,
                            .blueGreen,
                            .tealGreen
                        ]
                        //                        colors: [
                        //                            .gray,
                        //                            .white,
                        //                            .gray
                        //                        ]
                    ),
                    center: .center,
                    startAngle: startAngle,
                    endAngle: endAngle
                ),
                lineWidth: 25)
            .animation(
                Animation.linear.speed(2),
                value: [startAngle, endAngle]
            )
            .shadow(radius: 20)
            .frame(width: 325)
            .overlay(
                Group {
                    //                    Text("\(buttonLabel)Detroit!")
                    //                        .font(
                    //                            .system(
                    //                                size: 45,
                    //                                weight: .bold,
                    //                                design: .default
                    //                            )
                    //                        )
                    //                        .foregroundStyle(
                    //                            Color.blueGreen.gradient
                    //                            Color.nearWhite
                    //                        )
                    Text("\n\nValue of x: \(preciseRound(motion.x, precision: .hundredths))\nValue of y: \(preciseRound(motion.y, precision: .hundredths))")
                        .font(.system(size: 21, weight: .bold))
                        .foregroundStyle(
                            Color.blueGreen.gradient
                        )
                }
                    .frame(
                        width: 300,
                        height: 300
                    )
                    .background( Color.tealGreen
                                 //                    LinearGradient(gradient:
                                 //                                    Gradient(
                                 //                                        colors: [
                                 //                                            .tealGreen,
                                 //                                            .blueGreen
                                 //                                        ]),
                                 //                                   startPoint: UnitPoint(x: 0.5, y: 0),
                                 //                                   endPoint: UnitPoint(x: 0.5, y: 1)
                                 //                                  )
                        .clipShape(Circle())
                               )
                    .foregroundStyle(
                        .shadow(
                            .inner(
                                color: .black,
                                radius: 10
                            )
                        )
                    )
            )
    }
}

struct ButtonView_Preview: PreviewProvider {
    static var previews: some View {
        let motion = MotionManager(number: 60)
        ButtonView(buttonLabel: "")
            .environmentObject(motion)
    }
}
