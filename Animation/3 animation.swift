//
//  3 animation.swift
//  Animation
//
//  Created by Patrick Boren on 2020-11-26.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//

import Foundation
import CanvasGraphics

class thirdanimation: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Position of circle
    var nextX = 200
    var nextY = 260
    var dy = 1
    var dx = 1
    
    
    // This function runs once
    override init() {
        // Create canvas object – specify size
        
        canvas = Canvas(width: 500, height: 500)
        
        
        // Set starting position
        nextX = Int.random (in: 1...500)
        
        
        // Slow down the animation
        canvas.framesPerSecond = 1000
        
    }
    
    
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color.black
        canvas.drawRectangle(at: Point(x: 0, y: 0 ), width: 500, height: 500)
        
        // Change position
        nextX -= 0
        
        // Draw an ellipse in the middle of the canvas
//        canvas.fillColor = Color.init(hue: 173, saturation: 65, brightness: 63, alpha: 0)
        canvas.fillColor = Color(hue: 156, saturation: 70, brightness: 90, alpha: 80)
                            canvas.drawShapesWithFill = true
                            
                            var star: [Point] = []
                            star.append(Point(x: nextX + 0, y: nextY - 50))
                            star.append(Point(x: nextX + 14, y: nextY - 20))
                            star.append(Point(x: nextX + 47, y: nextY - 15))
                            star.append(Point(x: nextX + 23, y: nextY + 7))
                            star.append(Point(x: nextX + 29, y: nextY + 40))
                            star.append(Point(x: nextX + 0, y: nextY + 25))
                            star.append(Point(x: nextX - 29, y: nextY + 40))
                            star.append(Point(x: nextX - 23, y: nextY + 7))
                            star.append(Point(x: nextX - 47, y: nextY - 15))
                            star.append(Point(x: nextX - 14, y: nextY - 20))
                            canvas.drawCustomShape(with: star)
        
    
        nextX += dx
        nextY += dy
        if nextX >= 500 {
            dx -= 1
        } else if nextX == 0 {
            dx = 1
        }
        if nextY >= 500 {
            dy -= 1
        } else if nextY == 0 {
            dy = 1
        }
        
        
    }
}



