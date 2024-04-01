//
//  EntryStore.swift
//  What_Up_Dough
//
//  Created by Jacob Best on 9/24/23.
//

//import Foundation
//
//class EntryStore: ObservableObject {
//    @Published var allRestaurants = [Restaurant]()
//    
//    init(restautants: [Restaurant]) {
//        allRestaurants = restautants
//    }
//    
//    init() {
//        load()
//    }
//    
//    func load() {
//        do {
//            let url = try archiveURL()
//            print("Loading entries from \(url)")
//            let data = try Data(contentsOf: url)
//            let unarchiver = PropertyListDecoder()
//            let restaurants = try unarchiver.decode([Restaurant].self, from: data)
//            allRestaurants = restaurants
//        } catch let decodingError {
//            print("Could not read saved entries: \(decodingError)")
//        }
//    }
//    
//    func save() {
//        do {
//            let url = try archiveURL()
//            print("Saving entries to \(url)")
//            let encoder = PropertyListEncoder()
//            let data = try encoder.encode(allRestaurants)
//            try data.write(to: url)
//            print("Saved all of the restaurants.")
//        } catch CocoaError.fileReadNoSuchFile {
//            // Ignore Error
//        } catch let encodingError {
//            print("Could not save any of the restaurants: \(encodingError)")
//        }
//    }
//    
//    func archiveURL() throws -> URL {
//        let documentsDirectory = try FileManager.default.url(
//            for: .documentDirectory, in: .userDomainMask,
//            appropriateFor: nil, create: false)
//        
//        return documentsDirectory.appendingPathComponent("restaurants", conformingTo: .propertyList)
//    }
//}
