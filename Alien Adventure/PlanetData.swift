//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        
        
        let fileUrl = NSBundle.mainBundle().URLForResource(dataFile+".json", withExtension: nil)

        let contentsOfFile = NSData(contentsOfURL: fileUrl!)! as NSData
        
        var  planetName = ""
        
        do {
            
            let planetsArry = try NSJSONSerialization.JSONObjectWithData(contentsOfFile, options: NSJSONReadingOptions.AllowFragments) as! [[String:AnyObject]]
            
            var heighestPoint = 0
            
            for dict in planetsArry {
                
                var points = 0
                if let num : NSNumber = dict["RareItemsDetected"] as? NSNumber {
                    
                    let numValue = Int(num.intValue)
                    points = points + (numValue*3)
                    
                }
                
                if let num : NSNumber = dict["LegendaryItemsDetected"] as? NSNumber {
                    
                    let numValue = Int(num.intValue)
                    points = points + (numValue*4)

                    
                }
                
                if let num : NSNumber = dict["UncommonItemsDetected"] as? NSNumber {
                    
                    let numValue = Int(num.intValue)
                    points = points + (numValue*2)

                    
                }
                
                if let num : NSNumber = dict["CommonItemsDetected"] as? NSNumber {
                    
                    let numValue = Int(num.intValue)
                    points = points + numValue
                    
                }
                
                if points > heighestPoint {
                    
                    heighestPoint = points
                    
                    if let name : String = dict["Name"] as? String {
                        
                        planetName = name
                }
            }
            
            
        }
            
            
            
        } catch {
            print(error)
        }
        
        return planetName
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"