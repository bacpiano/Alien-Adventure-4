//
//  GetCommonItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func getCommonItems(inventory: [UDItem]) -> [UDItem] {
        // applying filter function to filter item with ratity type equal to common.
        // returning the modifiedInventory with the filtered items.
        let modifiedInventory = inventory.filter({
            (item : UDItem) -> Bool in
            
                item.rarity == .Common
            })
        
        return modifiedInventory
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"