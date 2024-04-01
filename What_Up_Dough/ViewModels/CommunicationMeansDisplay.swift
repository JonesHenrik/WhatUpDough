//
//  CommunicationMeansDisplay.swift
//  What_Up_Dough
//
//  Created by Jacob Best on 10/4/23.
//

import Foundation

extension CommunicationMeans {
    
    var sysName: String {
        switch self {
        case .Call:
            return "phone.fill"
        case .Message:
            return "message.fill"
        }
    }
    
    var commType: String {
        switch self {
        case .Call:
            return "Call +1 "
        case .Message:
            return "Text +1 "
        }
    }
}
