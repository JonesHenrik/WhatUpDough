//
//  LogoView.swift
//  What_Up_Dough
//
//  Created by Jacob Best on 10/3/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        Image("WUDIconNSNP")
            .resizable()
            .renderingMode(.template)
            .scaledToFit()
            .frame(
                width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,
                height: 100
            )
            .foregroundStyle(Color.nearWhite)
            .shadow(
                color: Color.blueGreen,
                radius: 4, 
                x:1,
                y:2
            )
            .padding(
                [.top],
                50
            )
    }
}

#Preview {
    LogoView()
}
