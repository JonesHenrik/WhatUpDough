//
//  PriceView.swift
//  What_Up_Dough
//
//  Created by Jacob Best on 10/3/23.
//

import SwiftUI

struct PriceView: View {
    let price: Int
    
    var label: String = ""
    
    var maximumValue: Int = 4;
    
    var offImage: Image?
    var onImage = Image(systemName: "dollarsign")
    
    var offColor: Color = Color.gray
    var onColor: Color = Color.green
    
    var body: some View {
        HStack {
            if label.isEmpty == false {
                Text(label)
                    .font(.subheadline)
                    .bold()
            }
            
            ForEach(1 ..< maximumValue + 1, id: \.self) { number in
                image(for: number)
                    .foregroundStyle(number > price ? offColor : onColor)
            }
            .kerning(0.1)
            .font(.system(size: 16, weight: .heavy))
        }
    }
    
    func image(for number: Int) -> Image {
        if number > price {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
}

#Preview {
    PriceView(price: 2)
}
