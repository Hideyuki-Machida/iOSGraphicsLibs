import UIKit
import iOSGraphicsLibs

func testUIColorExtended() {
    UIColor.init(hex: "#FFFFFF")
    UIColor.init(255, 255, -100, 255)
    UIColor.init(500, 500, -100, 255)
    UIColor.init(500, 500, -100, 255).toHexString
    
    let rgba001: RGBA = UIColor.init(0, 255, 0, 255).toRGBA
    let rgb001: RGB = UIColor.init(200, 0, 0, 255).toRGB

    UIColor.init(rgba: rgba001)
    UIColor.init(rgb: rgb001)
    
    UIColor.init(r: 255)
    //UIColor.init(displayP3Red: 1, green: 0, blue: 0, alpha: 1)
    UIColor.init(h: 255, s: 100, v: 100, a: 255)
    let rgba002: RGBA = UIColor.init(h: 255, s: 100, v: 100, a: 255).toRGBA
    let hsva002: HSVA = UIColor.init(h: 255, s: 100, v: 100, a: 255).toHSVA
    UIColor.init(rgba: rgba002)
    UIColor.init(hsva: hsva002)
}
testUIColorExtended()
