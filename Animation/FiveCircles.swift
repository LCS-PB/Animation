//
//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class FiveCircles: NSObject, Sketchable {
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    var x = 250
    var x2 = 250
    var x3 = 250
    var x4 = 250
    var x5 = 250
    var y = 250
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color.blue
        canvas.drawEllipse(at: Point(x: x - 25, y: 125), width: 50, height: 50)
        x -= 1
        canvas.fillColor = Color.green
        canvas.drawEllipse(at: Point(x: x2 - 25, y: 225), width: 50, height: 50)
        x2 += 1
        canvas.fillColor = Color.orange
        canvas.drawEllipse(at: Point(x: x3 - 25, y: 325), width: 50, height: 50)
        x3 -= 1
        canvas.fillColor = Color.purple
        canvas.drawEllipse(at: Point(x: x4 - 25, y: 425), width: 50, height: 50)
        x4 += 1
        canvas.fillColor = Color.black
        canvas.drawEllipse(at: Point(x: x5 - 25, y: 25), width: 50, height: 50)
        x5 += 1
     
    
    }
    
    
}

