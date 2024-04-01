//
//  RestaurantsList.swift
//  What_Up_Dough
//
//  Created by Jacob Best on 9/27/23.
//

import Foundation

var restaurants: [Restaurant] = [
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
            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
        id: UUID()),
//    Restaurant(
//        name: "Number 2",
//        genre: .Mediterranean,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue", 
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 3",
//        genre: .Japanese,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 4",
//        genre: .American,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2", 
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 5",
//        genre: .Chinese,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 6",
//        genre: .Greek,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 7",
//        genre: .Italian,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 8",
//        genre: .European,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 9",
//        genre: .Korean,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 10",
//        genre: .Mexican,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 11",
//        genre: .Mediterranean,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 12",
//        genre: .Japanese,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 13",
//        genre: .American,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 14",
//        genre: .Chinese,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 15",
//        genre: .Greek,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 16",
//        genre: .Italian,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 17",
//        genre: .European,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 18",
//        genre: .Korean,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 19",
//        genre: .Mexican,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 20",
//        genre: .Mediterranean,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 21",
//        genre: .Japanese,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 22",
//        genre: .American,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 23",
//        genre: .Chinese,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 24",
//        genre: .Greek,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 25",
//        genre: .Italian,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 26",
//        genre: .European,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
//    Restaurant(
//        name: "Number 27",
//        genre: .Korean,
//        diningOptions: "Dine-In * Takeout * Delivery",
//        img: Images(
//            storeFront: "joses2",
//            food: "jose1"),
//        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
//        address: "218 E Grand River Ave, Detroit, MI 48226",
//        phone: "(313) 965-9992",
//        hours: Hours(
//            times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
//        id: UUID()),
]

// .Mexican = [Jose's Tacos, number 10, number 19]
// .Med = [Number 2, Number 11, Number 20]

