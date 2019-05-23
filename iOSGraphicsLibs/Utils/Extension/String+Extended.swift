//
//  String+Extended.swift
//  iOSGraphicsLibs
//
//  Created by hideyuki machida on 2018/08/17.
//  Copyright © 2018 hideyuki machida. All rights reserved.
//

extension String {
    
    public var toNS: NSString {
        return self as NSString
    }
    
    public static func generateTimeString(min: Int, sec: Int) -> String {
        return (NSString(format:"%01d", min) as String) + ":" + (NSString(format:"%02d", sec) as String)
    }
    
    public func removeCharacter(char: String) -> String {
        return (self as NSString).replacingOccurrences(of: char, with: "")
    }
    
    public func isHiragana() -> Bool {
        var result: Bool = false
        for c in unicodeScalars {
            if c.value >= 0x3041 && c.value <= 0x3096 {
                result = true
            } else {
                result = false
                break
            }
        }
        return result
    }
    
    public func isKatakana() -> Bool {
        var result: Bool = false
        for c in unicodeScalars {
            if c.value >= 0x30A1 && c.value <= 0x30F6 {
                result = true
            } else {
                result = false
                break
            }
        }
        return result
    }
    
    public func toKatakana() -> String {
        var str = ""
        
        for c in unicodeScalars {
            if c.value >= 0x3041 && c.value <= 0x3096 {
                str += String(describing: UnicodeScalar(c.value + 96)!)
            } else {
                str += String(c)
            }
        }
        return str
    }
    
    public func toHiragana() -> String {
        var str = ""
        
        for c in unicodeScalars {
            if c.value >= 0x30A1 && c.value <= 0x30F6 {
                str += String(describing: UnicodeScalar(c.value - 96)!)
            } else {
                str += String(c)
            }
        }
        return str
    }
    
}
