//: [Previous](@previous) / [Next](@next)
//: # Blank canvas to copy
//:
//: ## To duplicate this page
//:
//: Place your cursor on line 19 of this page, press `Command-A` to select all text, and then `Command-C` to copy.
//:
//: Two-finger tap on the playground, then choose **New Playground Page**:
//:
//: ![new-playground](new-playground.png "New Playground")
//:
//: Move to the new page and press `Command-A` to select all text there, then `Command-V` to paste.
//:
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */
let orange = Color(hue: 21, saturation: 76, brightness: 94, alpha: 100)
let blue = Color(hue: 201, saturation: 72, brightness: 60, alpha: 65)
let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)
let deepRed = Color(hue: 5, saturation: 85, brightness: 94, alpha: 100)

canvas.fillColor = deepRed

canvas.drawRectangle(at: Point(x: 0, y: 0 ), width: 400, height: 600)
canvas.textColor = Color.black

canvas.drawText(message: "the clash", at: Point(x: 20, y: 410), size: 50, kerning: 0 )

canvas.drawText(message: "$2.55/ friday", at: Point(x: 20, y: 580), size: 8, kerning: 0 )

canvas.drawText(message: "december 22 1978", at: Point(x: 20, y: 570), size: 8, kerning: 0 )

canvas.drawText(message: "christmas party", at: Point(x: 115, y: 580), size: 8, kerning: 0 )

canvas.drawText(message: "with slits and the inoccents", at: Point(x: 115, y: 570), size: 8, kerning: 0 )

canvas.drawText(message: "friars aylesbury at maxwell hall", at: Point(x: 250, y: 580), size: 8, kerning: 0 )

canvas.drawText(message: "aylesbury, buckinghamshire, england", at: Point(x: 250, y: 570), size: 8, kerning: 0 )

//draw squares

canvas.drawShapesWithBorders = false

for y in stride(from: 0, to: 400, by: 100) {
    
    for x in stride(from: 0, to: 400, by: 100){
        
        canvas.fillColor = offWhite
        
        var vertices: [Point] = [] //empty list of vertices
        
        vertices.append(Point(x: x + 50, y: y))
        
        vertices.append(Point(x: x + 100, y: y + 50))
        
        vertices.append(Point(x: x + 50, y: y + 100))
        
        vertices.append(Point(x: x, y: y + 50))
        
        canvas.drawCustomShape(with: vertices)
    
        canvas.fillColor = deepRed
        canvas.drawEllipse(at: Point(x: x + 50, y: y + 50), width: 60, height: 60)
        
        canvas.fillColor = blue
        canvas.drawEllipse(at: Point(x: x + 70, y: y + 25), width: 60, height: 60)
        
        canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 5, alpha: 15)
        canvas.drawEllipse(at: Point(x: x + 120, y: y - 20 ), width: 60, height: 60)
    }
}
