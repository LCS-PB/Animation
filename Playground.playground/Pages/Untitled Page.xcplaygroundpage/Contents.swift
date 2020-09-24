////: [Previous](@previous)
//
//import Foundation
//
//var str = "Hello, playground"
//
////: [Next](@next)
////: [Previous](@previous) / [Next](@next)
////: # Blank canvas to copy
////:
////: ## To duplicate this page
////:
////: Place your cursor on line 19 of this page, press `Command-A` to select all text, and then `Command-C` to copy.
////:
////: Two-finger tap on the playground, then choose **New Playground Page**:
////:
////: ![new-playground](new-playground.png "New Playground")
////:
////: Move to the new page and press `Command-A` to select all text there, then `Command-V` to paste.
////:
///*:
// ## Canvas size
// 
// Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
// */
//let preferredWidth = 300
//let preferredHeight = 600
///*:
// ## Required code
// 
// Lines 28 to 36 are required to make the playground run.
// 
// Please do not remove.
// */
//import Cocoa
//import PlaygroundSupport
//import CanvasGraphics
//
//// Create canvas
//let canvas = Canvas(width: preferredWidth, height: preferredHeight)
//
//// Show the canvas in the playground's live view
//PlaygroundPage.current.liveView = canvas
//
//
//
//
//override func draw(_ rect: CGRect) {
//    
//    let strokeColor = NSColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
//
//    
//    
//    let stroke1Path = NSBezierPath()
//    stroke1Path.move(to: (CGPoint(x: 47, y: 64)))
//    stroke1Path.addLine(to: CGPoint(x: 27, y: 64))
//    stroke1Path.addCurve(to: CGPoint(x: 23, y: 60), controlPoint1: CGPoint(x: 24.79, y: 64), controlPoint2: CGPoint(x: 23, y: 62.21))
//    stroke1Path.addLine(to: CGPoint(x: 23, y: 36))
//    stroke1Path.addLine(to: CGPoint(x: 51, y: 36))
//    stroke1Path.addLine(to: CGPoint(x: 51, y: 60))
//    stroke1Path.addCurve(to: CGPoint(x: 47, y: 64), controlPoint1: CGPoint(x: 51, y: 62.21), controlPoint2: CGPoint(x: 49.21, y: 64))
//    stroke1Path.addLine(to: CGPoint(x: 47, y: 64))
//    stroke1Path.close()
//    stroke1Path.miterLimit = 4
//
//    stroke1Path.lineCapStyle = .round
//
//    stroke1Path.lineJoinStyle = .round
//
//    stroke1Path.usesEvenOddFillRule = true
//
//    strokeColor.setStroke()
//    stroke1Path.lineWidth = 2
//    stroke1Path.stroke()
//
//
//    
//    let stroke3Path = NSBezierPath()
//    stroke3Path.move(to: (CGPoint(x: 51, y: 40)))
//    stroke3Path.addLine(to: CGPoint(x: 23, y: 40))
//    stroke3Path.miterLimit = 4;
//
//    stroke3Path.lineCapStyle = .round
//
//    stroke3Path.lineJoinStyle = .round
//
//    stroke3Path.usesEvenOddFillRule = true
//
//    strokeColor.setStroke()
//    stroke3Path.lineWidth = 2
//    stroke3Path.stroke()
//
//
//    
//    let stroke5Path = NSBezierPath()
//    stroke5Path.move(to: (CGPoint(x: 33, y: 16)))
//    stroke5Path.addLine(to: CGPoint(x: 34, y: 19.6))
//    stroke5Path.addLine(to: CGPoint(x: 32, y: 24.4))
//    stroke5Path.addLine(to: CGPoint(x: 33, y: 28))
//    stroke5Path.miterLimit = 4;
//
//    stroke5Path.lineCapStyle = .round
//
//    stroke5Path.lineJoinStyle = .round
//
//    stroke5Path.usesEvenOddFillRule = true
//
//    strokeColor.setStroke()
//    stroke5Path.lineWidth = 2
//    stroke5Path.stroke()
//
//
//    
//    let stroke7Path = NSBezierPath()
//    stroke7Path.move(to: CGPoint(x: 41, y: 20))
//    stroke7Path.addLine(to: CGPoint(x: 42, y: 23.6))
//    stroke7Path.addLine(to: CGPoint(x: 40, y: 28.4))
//    stroke7Path.addLine(to: CGPoint(x: 41, y: 32))
//    stroke7Path.miterLimit = 4;
//
//    stroke7Path.lineCapStyle = .round
//
//    stroke7Path.lineJoinStyle = .round
//
//    stroke7Path.usesEvenOddFillRule = true
//
//    strokeColor.setStroke()
//    stroke7Path.lineWidth = 2
//    stroke7Path.stroke()
//
//
//    //// Stroke-9 Drawing
//    let stroke9Path = NSBezierPath()
//    stroke9Path.move(to: CGPoint(x: 51, y: 38.08))
//    stroke9Path.addCurve(to: CGPoint(x: 57, y: 45), controlPoint1: CGPoint(x: 54.4, y: 38.56), controlPoint2: CGPoint(x: 57, y: 41.47))
//    stroke9Path.addCurve(to: CGPoint(x: 51, y: 51.92), controlPoint1: CGPoint(x: 57, y: 48.53), controlPoint2: CGPoint(x: 54.39, y: 51.45))
//    stroke9Path.miterLimit = 4;
//
//    stroke9Path.lineCapStyle = .round
//
//    stroke9Path.lineJoinStyle = .round
//
//    stroke9Path.usesEvenOddFillRule = true
//
//    strokeColor.setStroke()
//    stroke9Path.lineWidth = 2
//    stroke9Path.stroke()
//}
//
///*:
// ## Add your code
// 
// Beginning on line 48, write a meaningful comment.
// 
// You can remove the code on line 49 and begin writing your own code.
// 
// [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
//
// */
//
//// Replace this comment with your first comment – what is the goal of the code you're about to write?
//canvas.drawRectangle(at: Point(x: 50, y: 75), width: 100, height: 200)
//
///*:
// ## Show the Assistant Editor
// Don't see any results?
// 
// Remember to show the Assistant Editor (1), and then switch to Live View (2):
// 
// ![timeline](timeline.png "Timeline")
//
// ## Use source control
// To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
// 
// Please commit and push your work often.
// 
// ![source_control](source-control.png "Source Control")
// */
