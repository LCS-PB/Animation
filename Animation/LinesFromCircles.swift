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

class LinesFromCircles: NSObject, Sketchable {

    

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'

    //       Therefore, the line immediately below must always be present.

    var canvas: Canvas

    

    var x1 = Int.random(in: 1...500)

    var y1 = Int.random(in: 1...500)

    var dx1 = 1

    var dy1 = 1

    var int = Int.random(in: 1...500)

    var int2 = Int.random(in: 1...500)

    var fx1 = 1

    var fy1 = 1

    // This function runs once

    override init() {

        

        // Create canvas object – specify size

        canvas = Canvas(width: 500, height: 500)

        

        canvas.drawShapesWithBorders = true

        canvas.borderColor = Color.black

    

    }

    

    // This function runs repeatedly, forever, to create the animated effect



    // This function runs repeatedly, forever, to create the animated effect

    func draw() {

    

//        var int = Int.random(in: 1...500)

//        var int2 = Int.random(in: 1...500)

//        let rainbow = Color(hue: int2, saturation: int, brightness: int, alpha: int)

      

//        canvas.fillColor = Color.black

        

        canvas.drawShapesWithFill = true

        canvas.fillColor = Color.white

        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 500, height: 500)

        canvas.defaultBorderWidth = 7



//    canvas.fillColor = rainbow

     

    y1 += dy1

    x1 += dx1

    int += fx1

    int2 += fy1

        canvas.drawShapesWithFill = false

        canvas.fillColor = Color.white

        canvas.drawEllipse(at: Point(x: x1, y: y1), width: 3, height: 3)

    canvas.drawEllipse(at: Point(x: x1, y: y1), width: 50, height: 50)

        

    if x1 >= 500 {

        dx1 = -1

        

    } else if x1 <= 0 {

        dx1 = Int.random(in: -5...111)

        

    }  else if y1 >= 500 {

            dy1 = -1

        

    }   else if y1 <= 0 {

        dy1 = +1

    }



        canvas.fillColor = Color.white

        canvas.drawEllipse(at: Point(x: int, y: int2), width: 3, height: 3)

    canvas.drawEllipse(at: Point(x: int, y: int2), width: 130, height: 130)

        

        if int >= 500 {

            fx1 = -1

            

        } else if int <= 0 {

            fx1 = Int.random(in: -5...50)

            

        }  else if int2 >= 500 {

                fy1 = -1

            

        }   else if int2 <= 0 {

            fy1 = +1

        }



    }





    

}

