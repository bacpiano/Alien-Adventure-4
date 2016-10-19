//
//  FindTheLasers.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func findTheLasers() -> (UDItem -> Bool) {
        
        // clousure
        func containsLaser(item: UDItem) -> Bool {
            
            // condition inside the closure to check if item's name contains "laser" String
            if item.name.containsString("laser") {
                return true
            }else{
                return false
            }
            
        }
        
        return containsLaser
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"