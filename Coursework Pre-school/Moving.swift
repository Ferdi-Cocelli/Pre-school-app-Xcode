//
//  Moving.swift
//  Coursework Pre-school
//
//  Created by Ferdi Cocelli on 02/03/2017.
//  Copyright © 2017 Ferdi Cocelli. All rights reserved.
    //

import UIKit



class Moving: UIImageView {
    
    var startLocation: CGPoint?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        startLocation = touches.first?.location(in: self)
        self.transform = CGAffineTransform(scaleX: 1.8, y: 1.8)
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let currentLocation = touches.first?.location(in: self)
        let dx = currentLocation!.x - startLocation!.x
        let dy = currentLocation!.y - startLocation!.y
        
        
        self.center = CGPoint(x: self.center.x+dx, y: self.center.y+dy)
        
        let middlex = self.bounds.midX
        center.x = max (middlex, center.x)
        center.x = min (self.superview!.bounds.size.width - middlex, center.x)
        
        let middley = self.bounds.midY
        center.y = max (middley + 280, center.y)
        center.y = min(self.superview!.bounds.size.height - middley - 65,  center.y)
        
        self.center = center

    
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.transform = CGAffineTransform(scaleX: 1, y: 1)
        
    }
    
}




