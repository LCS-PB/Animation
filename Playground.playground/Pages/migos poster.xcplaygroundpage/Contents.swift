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
let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)
let deepRed = Color(hue: 5, saturation: 85, brightness: 70, alpha: 100)
let grey = Color(hue: 0, saturation: 0, brightness: 60, alpha: 100)
//background
canvas.fillColor = deepRed
canvas.drawRectangle(at: Point(x: 0,y: 0), width: 400, height: 600)

//text on the poser
canvas.textColor = offWhite
canvas.drawText(message: "Migos", at: Point(x: 20, y: 470), size: 50, kerning: 0 )

canvas.drawText(message: "$155/ friday", at: Point(x: 20, y: 580), size: 11, kerning: 0 )

canvas.drawText(message: "December 30th", at: Point(x: 20, y: 570), size: 11, kerning: 0 )

canvas.drawText(message: "Chicken Teryaki", at: Point(x: 115, y: 580), size: 11, kerning: 0 )

canvas.drawText(message: "The Arlington Theater", at: Point(x: 115, y: 570), size: 11, kerning: 0 )

canvas.drawText(message: "1317 State St", at: Point(x: 250, y: 580), size: 11, kerning: 0 )

canvas.drawText(message: "Santa Barbara", at: Point(x: 250, y: 570), size: 11, kerning: 0 )

canvas.lineColor = offWhite
canvas.defaultLineWidth = 10
canvas.drawLine(from: Point(x: 0, y: 560), to: Point(x: 400, y: 530))
canvas.lineColor = grey
canvas.drawLine(from: Point(x: 0, y: 540), to: Point(x: 400, y: 510))


canvas.defaultLineWidth = 15
for y in stride(from: 0,

                through: 400,

                by: 40) {

    for x in stride(from: 0,

                    through: 400,

                    by: 40) {
        x

        if x == 0 {

            canvas.fillColor = grey
            

        } else if y == 0 {

            canvas.fillColor = grey

        } else if y == 400 {

            canvas.fillColor = grey

        } else if x == 400 {

            canvas.fillColor = grey

        }  else if x + y > 400 && x != 0 && x != 400 {

            canvas.fillColor = grey
        } else {

            canvas.fillColor = offWhite

            

        }


        var vertices: [Point] = [] //empty list of vertices
        
        vertices.append(Point(x: x + 15, y: y))
        
        vertices.append(Point(x: x + 55, y: y + 15))
        
        vertices.append(Point(x: x + 15, y: y + 55))
        
        vertices.append(Point(x: x, y: y + 15))
        
        canvas.drawCustomShape(with: vertices)

        

    }

    

}

/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
