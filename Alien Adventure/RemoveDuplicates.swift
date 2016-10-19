//
//  RemoveDuplicates.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func removeDuplicates(inventory: [UDItem]) -> [UDItem] {
        
        // create and initialize an empty array to store UDItem
        var modifiedInventory = [UDItem]()
        
        for item in inventory {
            
            // if modifiedInventory doesn't have the item already, then add it into the modifiedInventory. Otherwise igonre that item.
            if !modifiedInventory.contains(item) {
                
                modifiedInventory.append(item)
            }
        }
        return modifiedInventory
    }
    
}
