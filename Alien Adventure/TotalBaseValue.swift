//
//  TotalBaseValue.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func totalBaseValue(inventory: [UDItem]) -> Int {
        // using reduce() to find total of base values of all items in the inventory.
        // result is the totalBaseValue which is an Int.
        let totalBaseValue = inventory.reduce(0, combine:{(subtotal, item) -> Int in
        
            subtotal + item.baseValue
            
        })
        
        
        return totalBaseValue
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"