//
//  RatingView.swift
//  What_Up_Dough
//
//  Created by Jacob Best on 10/3/23.
//

import SwiftUI

struct RatingView: View {
    let rating: Int
    
    var label: String = ""
    
    var maximumRating = 5
    
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.yellow
    
    var body: some View {
        HStack {
            if label.isEmpty == false {
                Text(label)
                    .font(.subheadline)
                    .bold()
                    
            }
            ForEach(1..<maximumRating + 1, id: \.self) { number in
                image(for: number)
                    .foregroundColor(number > rating ? offColor : onColor)
            }
            .font(.system(size: 16))
        }
    }
    
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
    
}

#Preview {
    RatingView(rating: 4)
}
