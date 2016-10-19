//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {

        
        if s1 == "" && s2 == "" && shuffle == "" {
            return true
            
        }else if shuffle.characters.count == (s1.characters.count + s2.characters.count) {
            
            if shuffle.containsString(s1){
                
                let remainngShuffle = shuffle.stringByReplacingOccurrencesOfString(s1, withString: "")
                if remainngShuffle == s2 {
                    
                    return true
                }else{
                    return false
                }
                
            }else if shuffle.containsString(s2){
                
                let remainngShuffle = shuffle.stringByReplacingOccurrencesOfString(s2, withString: "")
                if remainngShuffle == s1 {
                    
                    return true
                }else{
                    return false
                }
                
            }else{
                
                var isFirstConditionTrue = false
                var isSecondConditionTrue = false
                
                
                if let s1StartIndex = shuffle.characters.indexOf(s1.characters.first!)  {
                    
                    if let s1EndIndex = shuffle.characters.indexOf(s1.characters.last!)  {
                        
                        if s1StartIndex < s1EndIndex {
                            
                            isFirstConditionTrue = true
                        }
                        
                    }
                    
                }
                
                if let s2StartIndex = shuffle.characters.indexOf(s2.characters.first!)  {
                    
                    if let s2EndIndex = shuffle.characters.indexOf(s2.characters.last!)  {
                        
                        if s2StartIndex < s2EndIndex {
                            
                            isSecondConditionTrue = true
                        }
                        
                    }
                    
                }

                if isFirstConditionTrue && isSecondConditionTrue {
                    
                    return true
                }
            }
        }

        return false
    }
}
