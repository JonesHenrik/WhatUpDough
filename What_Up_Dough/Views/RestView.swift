//
//  RestView.swift
//  What_Up_Dough
//
//  Created by Jacob Best on 9/20/23.
//

import SwiftUI

struct RestView: View {
    let restaurants: [Restaurant]
    
    var body: some View {
        let restaurant = randomRestaurant()
        
        RestContentView(restaurant: restaurant)
    }
    
    func randomRestaurant() -> Restaurant {
        return restaurants.randomElement()!
    }
}

#Preview {
    RestView(restaurants: [
        Restaurant(
            name: "Jose's Tacos",
            genre: .Mexican,
            diningOptions: "Dine-In * Takeout * Delivery",
            img: Images(
                storeFront: "joses2",
                food: "jose1"),
            desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
            address: "218 E Grand River Ave, Detroit, MI 48226",
            phone: "(313) 965-9992",
            hours: Hours(
                times:
                    [
                        "Closed",
                        "9AM-7pm",
                        "9AM-7pm",
                        "9AM-7pm",
                        "9AM-7pm",
                        "9AM-7pm",
                        "11AM-7pm"
                    ]
            ),
            id: UUID())
    ])
}
