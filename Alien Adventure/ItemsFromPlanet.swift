//
//  ItemsFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func itemsFromPlanet(inventory: [UDItem], planet: String) -> [UDItem] {
        
        var itemFromPlanet = [UDItem]()
//        itemFromPlanet = [UDItem]();
        for item in inventory {
            
            if let planetName = item.historicalData["PlanetOfOrigin"] where  planetName as! String == planet {
                
                 itemFromPlanet.append(item)

            }
        }
        
        
        return itemFromPlanet
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"