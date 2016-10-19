//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        
        // Checking that each requestType has a badge.

            for requestType in requestTypes {
                
                // using a variable to check requestType existance. If match found, isMatchFound will be true. After checking all badges, if isMatchFound is still false, it means there is no badge for that request type and we return false. Otherwise return true.
                var isMatchFound = false
                
                for badge in badges {
                    
                    if badge.requestType == requestType {
                        
                        isMatchFound = true
                    }
                }
                
                if !isMatchFound {
                    
                    return false
                }
            }
        
        return true
    }
    
}
