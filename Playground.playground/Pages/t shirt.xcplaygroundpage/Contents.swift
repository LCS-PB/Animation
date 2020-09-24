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
let preferredWidth = 500
let preferredHeight = 500
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
canvas.drawAxes()
canvas.drawLine(from: Point(x: 75, y: 350 ), to: Point(x: 250, y: 75))
canvas.drawLine(from: Point(x: 250, y: 75 ), to: Point(x: 425, y: 350))
canvas.drawLine(from: Point(x: 75, y: 350 ), to: Point(x: 425, y: 350))
canvas.drawLine(from: Point(x: 91, y: 325 ), to: Point(x: 350, y: 325))
canvas.drawLine(from: Point(x: 250, y: 170 ), to: Point(x: 350, y: 325))
canvas.drawLine(from: Point(x: 135, y: 300 ), to: Point(x: 333, y: 300))
canvas.drawLine(from: Point(x: 135, y: 300 ), to: Point(x: 265, y: 100))
canvas.drawLine(from: Point(x: 395, y: 350 ), to: Point(x: 265, y: 145))
canvas.drawLine(from: Point(x: 160, y: 300 ), to: Point(x: 265, y: 145))





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

