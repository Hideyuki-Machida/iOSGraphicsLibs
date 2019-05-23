//
//  UIColor+Extended.swift
//  iOSGraphicsLibs
//
//  Created by hideyuki machida on 2018/07/29.
//  Copyright © 2018 hideyuki machida. All rights reserved.
//

import UIKit

public typealias RGB = (r: Int, g: Int, b: Int)
public typealias RGBA = (r: Int, g: Int, b: Int, a: Int)
public typealias HSV = (h: Int, s: Int, v: Int)
public typealias HSVA = (h: Int, s: Int, v: Int, a: Int)

public extension UIColor {
    
    // MARK: - Hex
    
	convenience init(hex: String, alpha: CGFloat = 1.0) {
        let hex: String = hex.replacingOccurrences(of: "#", with: "")
        let scanner: Scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        let r: UInt64 = (rgbValue & 0xff0000) >> 16
        let g: UInt64 = (rgbValue & 0xff00) >> 8
        let b: UInt64 = rgbValue & 0xff
        
        self.init( red: CGFloat(r) / 0xff, green: CGFloat(g) / 0xff, blue: CGFloat(b) / 0xff, alpha: alpha)
    }
    
	var toHexString: String {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        
        return String(
            format: "%02X%02X%02X",
            Int(r * 0xff),
            Int(g * 0xff),
            Int(b * 0xff)
        )
    }
    
    
    // MARK: - RGB

	convenience init(r: Int = 0, g: Int = 0, b: Int = 0, a: Int = 255) {
        self.init( red: CGFloat(max(min(r, 255), 0)) / 255, green: CGFloat(max(min(g, 255), 0)) / 255, blue: CGFloat(max(min(b, 255), 0)) / 255, alpha: CGFloat(max(min(a, 255), 0)) / 255)
    }
    
	convenience init(_ r: Int, _ g: Int, _ b: Int, _ a: Int) {
        self.init(r: r, g: g, b: b, a: a)
    }

	convenience init(rgba: RGBA) {
        self.init(rgba.r, rgba.g, rgba.b, rgba.a)
    }
    
	convenience init(rgb: RGB) {
        self.init(rgb.r, rgb.g, rgb.b, 255)
    }
    
	var toRGBA: RGBA {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0

        self.getRed(&r, green: &g, blue: &b, alpha: &a)

        return RGBA(r: Int(r * 255), g: Int(g * 255), b: Int(b * 255), a: Int(a * 255))
    }
    
	var toRGB: RGB {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        
        return RGB(r: Int(r * 255), g: Int(g * 255), b: Int(b * 255))
    }

	var toRGBAList: [Int] {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        self.getRed(&r, green: &g, blue: &b, alpha: &a)

        return [Int(r * 255), Int(g * 255), Int(b * 255), Int(a * 255)]
    }
    
    
    // MARK: - HSV
    
	convenience init(h: Int = 0, s: Int = 0, v: Int = 0, a: Int = 255) {
        self.init(hue: CGFloat(max(min(h, 255), 0)) / 255, saturation: CGFloat(max(min(s, 255), 0)) / 255, brightness: CGFloat(max(min(v, 255), 0)) / 255, alpha: CGFloat(max(min(a, 255), 0)) / 255)
    }

	convenience init(hsva: HSVA) {
        self.init(h: hsva.h, s: hsva.s, v: hsva.v, a: hsva.a)
    }

	convenience init(hsv: HSV) {
        self.init(h: hsv.h, s: hsv.s, v: hsv.v, a: 255)
    }
    
	var toHSVA: HSVA {
        var h: CGFloat = 0
        var s: CGFloat = 0
        var v: CGFloat = 0
        var a: CGFloat = 0
        
        self.getHue(&h, saturation: &s, brightness: &v, alpha: &a)
        
        return HSVA(h: Int(h * 255), s: Int(s * 255), v: Int(v * 255), a: Int(a * 255))
    }
    
	var toHSV: HSV {
        var h: CGFloat = 0
        var s: CGFloat = 0
        var v: CGFloat = 0
        var a: CGFloat = 0
        
        self.getHue(&h, saturation: &s, brightness: &v, alpha: &a)
        
        return HSV(h: Int(h * 255), s: Int(s * 255), v: Int(v * 255))
    }
}
