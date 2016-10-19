//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation
extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        
        if inventory.count>0 {
            
            var oldestItem = inventory[0]
            var oldestAge : NSNumber = 0
            
            for item in inventory {
                
                if let planetName = item.historicalData["PlanetOfOrigin"] where  planetName as! String == planet{
                    
                    if let carbonAge : NSNumber = item.historicalData["CarbonAge"] as? NSNumber{
                        
                        let comparisonResult = carbonAge.compare(oldestAge)
                    
                        if comparisonResult ==  NSComparisonResult.OrderedDescending{
                            
                            oldestAge=carbonAge
                            oldestItem = item

                        }
                        
                    }

                    
                }
                
                
            }
            
            return oldestItem;
            
        }else{
           
            return nil
        }
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"