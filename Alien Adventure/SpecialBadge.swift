//
//  SpecialBadge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import SpriteKit

class SpecialBadge: Badge {

    override init(requestType: UDRequestType) {
        
        super.init(requestType: requestType)
        // Creating a textrue to pass into the initializer
        // create an image with a png from the project
        let imageForTexture: UIImage = UIImage(named: "BadgeTeal")!
        // create a texture from the image
        let texture: SKTexture = SKTexture(image: imageForTexture)
        // updating the new texture
        self.texture = texture
        
        // Create random number and casting it to Int
        let randomNumber = Int(arc4random_uniform(3))
        // Creating an animation based on the randon number
        let badgeAnimation = BadgeAnimation.init(rawValue: randomNumber)
        // actions are methods to perform animations on sprites. These action could be for zooming, moving, rotating effects and many more.
        if badgeAnimation == BadgeAnimation.GrowAndShrink {
            
            // These two actions are scaling the texture, so it will be a grow shrink effect
            
            // create two actions
            let action1 = SKAction.scaleTo(0.8, duration: 1.0)
            let action2 = SKAction.scaleTo(1.1, duration: 1.0)
            // define a sequence of actions like an action array
            let sequencedAction = SKAction.sequence([action1, action2])
            
            // run the sequence of actions
            runAction(SKAction.repeatActionForever(sequencedAction))
            
        }else if badgeAnimation == BadgeAnimation.Rotate{
            // this action is
            
            // define the action of rotation
            let action = SKAction.rotateByAngle(CGFloat(-M_PI), duration: 1.5)
            // run action of rotation
            runAction(SKAction.repeatActionForever(action))
            
        }else if badgeAnimation == BadgeAnimation.Shake{
            
            // Shaking animation
            
            let x: Float = 10
            let y: Float = 6
            let numberOfTimes = 2.0 / 0.04
            var actionsArray = [SKAction]()
            
            for _ in 1...Int(numberOfTimes) {
                let dX = Float(arc4random_uniform(UInt32(x))) - x / 2
                let dY = Float(arc4random_uniform(UInt32(y))) - y / 2
                let action = SKAction.moveByX(CGFloat(dX), y: CGFloat(dY), duration: 0.02)
                actionsArray.append(action)
                actionsArray.append(action.reversedAction())
            }
            
            let sequencedAction = SKAction.sequence(actionsArray)
            runAction(SKAction.repeatActionForever(sequencedAction))
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    enum BadgeAnimation : Int {
        case GrowAndShrink = 0
        case Rotate = 1
        case Shake = 2
    }
    
    func anumationFunction() -> Void {
        
        let x: Float = 10
        let y: Float = 6
        let numberOfTimes = 2.0 / 0.04
        var actionsArray = [SKAction]()
        
        for _ in 1...Int(numberOfTimes) {
            let dX = Float(arc4random_uniform(UInt32(x))) - x / 2
            let dY = Float(arc4random_uniform(UInt32(y))) - y / 2
            let action = SKAction.moveByX(CGFloat(dX), y: CGFloat(dY), duration: 0.02)
            actionsArray.append(action)
            actionsArray.append(action.reversedAction())
        }
        
        let action = SKAction.rotateByAngle(CGFloat(-M_PI), duration: 1.5)
        runAction(SKAction.repeatActionForever(action))
        
        let action1 = SKAction.scaleTo(0.8, duration: 1.0)
        let action2 = SKAction.scaleTo(1.1, duration: 1.0)
        let sequencedAction = SKAction.sequence([action1, action2])
        runAction(SKAction.repeatActionForever(sequencedAction))
    }
    
}