//
//  FunctionArt1.swift
//  Animation
//
//  Created by Patrick Boren on 2020-11-17.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//


import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class FunctionArt1: NSObject, Sketchable {

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas

    // Add many functions
    // This is now a list, or an array, of functions
    var functions: [MathFunction] = []    // empty list
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
             
        // Initialize many functions
        for i in 1...20 {
            
            // Create the function
            let newFunction = MathFunction(a: 1.0,
                                           k: 5.0,
                                           d: CGFloat(i) * 25 - CGFloat(canvas.width / 2),
                                           c: 0,
                                           canvas: canvas,
                                           type: .linear)
            
            // Add it to the list
            functions.append(newFunction)
            
        }
        
        // Speed
        canvas.framesPerSecond = 60
    }

    // This function runs repeatedly, forever, to create the animated effect
    func draw() {

        //clear canvas
        canvas.fillColor = Color(hue: 0,
                                 saturation: 0,
                                 brightness: 100,
                                 alpha: 100)
        
        canvas.drawRectangle(at: Point(x:0, y: 0), width: canvas.width, height: canvas.height)
        // What frame are we on?
//        print(canvas.frameCount)
        
        canvas.defaultLineWidth = 1
        
        // Set the origin to be the middle of the canvas
        canvas.translate(to: Point(x: canvas.width / 2, y: canvas.height / 2))

        //draw the entire list of functions all at once
        for x in 0...canvas.width{
            for function in functions {
                function.update(on: canvas,
                                usingInputValue: x)
            }

        }
       
        // Update the position of all functions
       
    
    }

}