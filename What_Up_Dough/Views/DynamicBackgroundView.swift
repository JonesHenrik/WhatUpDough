//
//  DynamicBackgorund.swift
//  What_Up_Dough
//
//  Created by Jacob Best on 10/3/23.
//

import SwiftUI

struct DynamicBackgroundView: View {
    @EnvironmentObject var motion: MotionManager
    
    let gridItems = [
        GridItem(),
        GridItem(),
        GridItem(),
        GridItem()
    ]
    
    var body: some View {
        LazyVGrid(columns: gridItems, spacing: 5) {
            ForEach(0..<60) { _ in
                motion.tintColor
                    .animation(
                        .easeIn,
                        value: motion.y
                    )
                    .frame(width: 60, height: 60)
                    .padding(.vertical)
                    .mask{
                        Image("WUDIconNS")
                            .resizable()
                            .scaledToFit()
                            .opacity(0.2)
                    }
            }
            .padding(.horizontal)
            .padding(.top)
        }
    }
}

struct DynamicBackgorund_Previews: PreviewProvider {
    static var previews: some View {
        let motion = MotionManager(number: 60)
        DynamicBackgroundView()
            .environmentObject(motion)
    }
}

