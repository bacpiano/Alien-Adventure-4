//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: UDItem throws -> Void) -> [UDPolicingError:Int] {
        
        var policingDict = [UDPolicingError:Int]()
        var itemFromCuniaCount: Int = 0
        var nameConatinsLaserCount: Int = 0
        var valueLessThan10Count: Int = 0
        
        // do-try-catch for each item and count the occurance of throw for each error
        for item in inventory {
            
            do{
                
                try policingFilter(item)
                
            }catch UDPolicingError.ItemFromCunia{
                
                itemFromCuniaCount+=1
                
            }catch UDPolicingError.NameContainsLaser{
                
                nameConatinsLaserCount+=1
                
            }catch UDPolicingError.ValueLessThan10{
                
                valueLessThan10Count+=1
                
            }catch{
                
                // This catch is important for any unknown error which is not described in our UDPloicingError list
            }
            
        }
        
        // creating a dictionatry with each error type key and value will be the count of that specifc error type count.
        policingDict=[UDPolicingError.ItemFromCunia:itemFromCuniaCount,UDPolicingError.NameContainsLaser:nameConatinsLaserCount,UDPolicingError.ValueLessThan10:valueLessThan10Count]
        
        return policingDict
    }    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"