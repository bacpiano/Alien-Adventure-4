//
//  BoostItemValue.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func boostItemValue(inventory: [UDItem]) -> [UDItem] {
        
        // using map funtion to increment each item's base value by 100 and return the modified values. All modified values will be stored in the new modifiedInventory and that modifiedInventory will be returned.
        let modifiedInventory = inventory.map ({
            (item: UDItem) -> UDItem in
            
            var modifeidItem = item
            modifeidItem.baseValue+=100
            return modifeidItem
        })
        return modifiedInventory
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"