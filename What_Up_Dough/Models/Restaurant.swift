//
//  Restaurant.swift
//  What_Up_Dough
//
//  Created by Jacob Best on 9/20/23.
//

import Foundation

struct Restaurant: Identifiable {
    var name: String
    var genre: Genre
    var diningOptions: String
    var img: Images
    var rating: Int = 4
    var price: Int = 2
    var desc: String
    var address: String
    var phone: String
    var hours: Hours
    var id: UUID
}
