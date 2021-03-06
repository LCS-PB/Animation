import Foundation



var str = "Hello, playground"

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


let canvas = Canvas(width: preferredWidth, height: preferredHeight)

PlaygroundPage.current.liveView = canvas

/*:

 ## Add your code

 

 Beginning on line 48, write a meaningful comment.

 

 You can remove the code on line 49 and begin writing your own code.

 

 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.



 */


let deepOrange = Color(hue: 8, saturation: 78, brightness: 93, alpha: 100)

let offWhite = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)

let brightYellow = Color(hue: 46, saturation: 71, brightness: 98, alpha: 100)

canvas.fillColor = deepOrange

canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

for y in stride(from: 200,

                to: 600,

                by: 45) {

    

    for x in stride(from: 0,

                   to: 400,

                by: 45) {

        x

        canvas.fillColor = brightYellow

        var vertices: [Point] = []

        vertices.append(Point(x: x, y: y))

        vertices.append(Point(x: 45 + x, y: y))

        vertices.append(Point(x: 45 + x, y: 45 + y))

     

        canvas.drawCustomShape(with: vertices)

    }

}


canvas.drawAxes(withScale: true, by: 50)

//: [Next](@next)
