//
//  RestContentView.swift
//  What_Up_Dough
//
//  Created by Jacob Best on 9/25/23.
//

import SwiftUI

struct RestContentView: View {
    @State private var isShowingPopover: Bool = false
    
    let restaurant: Restaurant
    
    var body: some View {
        Grid(horizontalSpacing: 4, verticalSpacing: 4) {
            GridRow {
                Text(restaurant.name)
                    .gridCellColumns(2)
                    .font(.largeTitle)
            }
            GridRow {
                Text(restaurant.genre.rawValue)
                    .gridCellColumns(2)
                    .font(.headline)
            }
            GridRow {
                Text(restaurant.diningOptions)
                    .gridCellColumns(2)
                    .font(.subheadline)
            }
            GridRow {
                Image(restaurant.img.storeFront)
                    .resizable()
                    .scaledToFit()
                    .padding(.leading, 5)
                
                Image(restaurant.img.food)
                    .resizable()
                    .scaledToFit()
                    .padding(.trailing, 5)
            }
            Divider()
                .gridCellUnsizedAxes(.horizontal)
            GridRow{
                RatingView(rating: restaurant.rating)
                    .imageScale(.small)
                    .padding([.vertical, .leading], 5.0)
                    
               PriceView(price: restaurant.price)
                    .imageScale(.small)
                    .padding([.vertical, .trailing], 5.0)
            }
            Divider()
                .gridCellUnsizedAxes(.horizontal)
            GridRow {
                Text(restaurant.desc)
                    .font(.caption)
                    .gridCellColumns(2)
            }
            .padding(.trailing, 5)
            .padding(.bottom, 5)
            Divider()
                .gridCellUnsizedAxes(.horizontal)
            GridRow{
                Text("Address: ")
                    .font(.headline)
                    .bold()
                    .padding(.leading,5)
                    .gridCellAnchor(.topLeading)
                Text(restaurant.address)
                    .font(.subheadline)
                    .gridCellAnchor(.topLeading)
            }
            .padding(.trailing, 5)
            .padding(.bottom, 5)
            Divider()
                .gridCellUnsizedAxes(.horizontal)
            GridRow{
                Text("Phone:")
                    .font(.headline)
                    .bold()
                    .padding(.leading,5)
                    .gridCellAnchor(.leading)
                Button("+1 \(restaurant.phone)") {
                    isShowingPopover = true
                }
                .confirmationDialog("Confirm Call",
                                    isPresented: $isShowingPopover,
                                    titleVisibility: .hidden
                ) {
                    ConfirmationView(phoneNumber: restaurant.phone)
                }
                .gridCellAnchor(.leading)
            }
            .padding(.trailing, 5)
            .padding(.bottom, 5)
            Divider()
                .gridCellUnsizedAxes(.horizontal)
            GridRow(alignment: .top) {
                Text("Business Hours:")
                    .font(.headline)
                    .bold()
                    .gridCellAnchor(.topLeading)
                    .padding(.leading,5)
                Grid() {
                    ForEach(0 ..< 7) { value in
                        GridRow {
                            Text(restaurant.hours.day[value])
                                .gridCellAnchor(.leading)
                            Text(restaurant.hours.times[value])
                                .gridCellAnchor(.leading)
                        }
                    }
                }
                .gridCellAnchor(.leading)
            }
            .padding([.bottom, .trailing], 5)
            .padding(.bottom, 5)
        }
    }
}
    
#Preview {
    RestContentView(restaurant: Restaurant(
        name: "Jose's Tacos",
        genre: .Mexican,
        diningOptions: "Dine-In * Takeout * Delivery",
        img:
            Images(
                storeFront: "joses2",
                food: "jose1"
            ),
        desc: "Tacos, quesidillas & burritos are made with or without meat at this laid-back Mexican Venue",
        address: "218 E Grand River Ave, Detroit, MI 48226",
        phone: "(313) 965-9992",
        hours:
            Hours(
                times: ["Closed", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "9AM-7pm", "11AM-7pm"]),
        id: UUID()
    ))
}
