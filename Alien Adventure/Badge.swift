//
//  Badge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import SpriteKit

class Badge: SKSpriteNode {

    var requestType: UDRequestType
    
    init(requestType: UDRequestType) {
        self.requestType = requestType
        
        // Creating a texture to pass into the initializer
        // create an image with a png from the project
        let imageForTexture: UIImage = UIImage(named: "BadgeMagenta")!
        // create a texture from the image
        let texture: SKTexture = SKTexture(image: imageForTexture)
        super.init(texture: texture, color: UIColor.clearColor(), size: CGSizeMake(48, 48))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}