//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        
        var bannedItems : [Int]
        bannedItems = [Int]()
        
        
        let fileUrl = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")
       
        let contentsOfFile = NSArray(contentsOfURL: fileUrl!) as! [[String:AnyObject]]
        
        for dict in contentsOfFile {
            
            
            if let name : String = dict["Name"] as? String where name.localizedCaseInsensitiveContainsString("laser"){
                
                if let historicalData : Dictionary = dict["HistoricalData"] as? [String:AnyObject] {
                    
                    if let carbonAge : NSNumber = historicalData["CarbonAge"] as? NSNumber {
                        
                        let carbonAgeValue : Int = Int(carbonAge.intValue)
                        if carbonAgeValue < 30 {
                            
                            if let itemID : NSNumber = dict["ItemID"] as? NSNumber{
                                
                                
                                let itemIDValue : Int = Int(itemID.intValue)
                                bannedItems.append(itemIDValue)
                                
                            }
                            
                        }
                    }
                }
                
            }
        }
        
        
        return bannedItems
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"