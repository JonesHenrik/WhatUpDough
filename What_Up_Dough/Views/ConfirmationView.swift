//
//  ConfirmationView.swift
//  What_Up_Dough
//
//  Created by Jacob Best on 10/3/23.
//

import SwiftUI

struct ConfirmationView: View {
    let phoneNumber: String
    
//    var systemText: AttributedString {
//        var attributedString = AttributedString()
//    }
    
    var body: some View {
        ForEach(CommunicationMeans.allCases, id: \.self) { device in
            Button {
                guard let url = URL(string:"tel//:\(phoneNumber)") else { return }
                UIApplication.shared.open(url)
            } label: {
                Text(Image(systemName:"\(device.sysName)")) + Text("\(device.commType) \(phoneNumber)")
            }
        }
    }
}

#Preview {
    ConfirmationView(phoneNumber: "1234567890")
}
