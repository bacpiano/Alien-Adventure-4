//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation
extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        if inventory.count > 0 {
            
            var cnt = [String: Int]()
            var i = 0
            
            for item in inventory {
                
                let itemName = item.name.lowercaseString
                
                for char in itemName.characters {
                    let c = String(char)
                    
                    if let match = cnt[c] {
                        cnt[c] = match+1
                    } else {
                        cnt[c] = 1
                    }
                    i+=1
                }
                
                
            }
            
            let sortedKeys = (cnt as NSDictionary).keysSortedByValueUsingSelector(#selector(NSNumber.compare(_:)))
            let key = sortedKeys.last! as! String
            return key.characters.first
            
        }
            
        return nil
    }
}
