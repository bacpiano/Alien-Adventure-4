//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
        var rarityOfItems : [UDItemRarity:Int];
        rarityOfItems=[UDItemRarity:Int]()
        
        var commonCount = 0
        var unCommonCount = 0
        var rareCount = 0
        var legendaryCount = 0
        
        for item in inventory {
            
            if item.rarity == .Common {
                
                commonCount+=1
                
            }else if item.rarity == .Uncommon {
                
                unCommonCount+=1
                
            }else if item.rarity == .Rare {
                
                rareCount+=1
                
            }else if item.rarity == .Legendary {
                
                legendaryCount+=1
            }
        }
        
        rarityOfItems = [ .Common: commonCount, .Uncommon: unCommonCount, .Rare: rareCount, .Legendary: legendaryCount]
        
        return rarityOfItems
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"