//
//  RedefinePolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

// MARK: - UDPolicingError

enum UDPolicingError: ErrorType {
    case NameContainsLaser
    case ItemFromCunia
    case ValueLessThan10
}

extension Hero {
    
    func redefinePolicingItems() -> (UDItem throws -> Void) {
        // Matching criteria for each item and throw the respective error
        func policingFilter(item: UDItem) throws -> Void {
            
            // lowercaseString is used to make this condition true for "laser" and "LASER" both
            if item.name.lowercaseString.containsString("laser") {
                
                throw UDPolicingError.NameContainsLaser
            }else if let planetOfOrigin : String = item.historicalData["PlanetOfOrigin"] as? String where planetOfOrigin == "Cunia"{
                
                throw UDPolicingError.ItemFromCunia
            }else if item.baseValue < 10 {
                
                throw UDPolicingError.ValueLessThan10
            }
            
        }
        
        return policingFilter        
    }    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"