//
//  ContentView.swift
//  What_Up_Dough
//
//  Created by Jacob Best on 9/15/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var motionManager = MotionManager(number: 60)
    
    @State private var isShowingRestView: Bool = false
    @State private var didOpen: Bool = false
    
    @State private var buttonLabel: String = "Food In\n"
    
    @State private var restaurantsArray = restaurants
    
    var body: some View {
        ZStack {
            DynamicBackgroundView()
                .environmentObject(motionManager)
                .frame(
                    width: 400,
                    height: 900
                )
            VStack {
                Group {
                    Spacer()
                    LogoView()
                    Spacer()
                    Button {
                        isShowingRestView.toggle();
                    } label: {
                        ButtonView(buttonLabel: buttonLabel)
                            .environmentObject(motionManager)
                            .frame(
                                width: 350,
                                height: 350
                            )
                            .padding(
                                [.bottom],
                                60
                            )
                    }
                    Spacer()
                    Spacer()
                        .sheet(isPresented: $isShowingRestView) {
                            RestView(restaurants: restaurantsArray)
                        }
                    
                }
            }
            .toolbar {
                Menu {
                    ForEach(Genre.allCases, id: \.self) { genre in
                        Button {
                            buttonLabel = "\nFood In\n"
                            restaurantsArray = restaurants.filter( {$0.genre == genre}
                            )
                        } label: {
                            genre.diplayName
                        }
                    }
                } label: {
                    Label("Choose Food Genre", systemImage: "plus.circle")
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
