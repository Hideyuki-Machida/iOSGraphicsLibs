//
//  Vec4D.swift
//  iOSGraphicsLibs
//
//  Created by hideyuki machida on 2018/07/30.
//  Copyright © 2018 hideyuki machida. All rights reserved.
//

import Foundation

public struct Vec4D {
    var x: Float
    var y: Float
    var z: Float
    var w: Float
    
    public init(x: Float = 0.0, y: Float = 0.0, z: Float = 0.0, w: Float = 0.0) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
}


// MARK: - initialize

public extension Vec4D {
	init() {
        self.x = 0.0
        self.y = 0.0
        self.z = 0.0
        self.w = 0.0
    }
    
	init(_ x: Float, _ y: Float, _ z: Float, _ w: Float) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
}


// MARK: - CustomPlaygroundDisplayConvertible

extension Vec4D: CustomPlaygroundDisplayConvertible {
    public var playgroundDescription: Any {
        return (x: self.x, y: self.y, z: self.z, w: self.w)
    }
}


// MARK: - Basic operator - 演算子

public extension Vec4D {
	static func + (left: Vec4D, right: Float) -> Vec4D {
        return Vec4D(x: left.x + right, y: left.y + right, z: left.z + right, w: left.w + right)
    }
    
	static func - (left: Vec4D, right: Float) -> Vec4D {
        return Vec4D(x: left.x - right, y: left.y - right, z: left.z - right, w: left.w - right)
    }

    static func * (left: Vec4D, right: Float) -> Vec4D {
        return Vec4D(x: left.x * right, y: left.y * right, z: left.z * right, w: left.w * right)
    }

    static func / (left: Vec4D, right: Float) -> Vec4D {
        return Vec4D(x: left.x / right, y: left.y / right, z: left.z / right, w: left.w / right)
    }
}

public extension Vec4D {
    static func + (left: Vec4D, right: Vec4D) -> Vec4D {
        return Vec4D(x: left.x + right.x, y: left.y + right.y, z: left.z + right.z, w: left.w + right.w)
    }
    
    static func - (left: Vec4D, right: Vec4D) -> Vec4D {
        return Vec4D(x: left.x - right.x, y: left.y - right.y, z: left.z - right.z, w: left.w - right.w)
    }

    static func * (left: Vec4D, right: Vec4D) -> Vec4D {
        return Vec4D(x: left.x * right.x, y: left.y * right.y, z: left.z * right.z, w: left.w * right.w)
    }

    static func / (left: Vec4D, right: Vec4D) -> Vec4D {
        return Vec4D(x: left.x / right.x, y: left.y / right.y, z: left.z / right.z, w: left.w / right.w)
    }
}


// MARK: - Prefix operator - 前置演算子

public extension Vec4D {
	static prefix func + (left: Vec4D) -> Vec4D {
        return Vec4D(x: +left.x, y: +left.y, z: +left.z, w: +left.w)
    }
    
	static prefix func - (left: Vec4D) -> Vec4D {
        return Vec4D(x: -left.x, y: -left.y, z: -left.z, w: -left.w)
    }
}


// MARK: - Compound assignment operator - 複合代入演算子

public extension Vec4D {
	static func += (left: inout Vec4D, right: Float) {
        left = left + right
    }
    
	static func -= (left: inout Vec4D, right: Float) {
        left = left - right
    }
    
	static func *= (left: inout Vec4D, right: Float) {
        left = left * right
    }
    
	static func /= (left: inout Vec4D, right: Float) {
        left = left / right
    }
}

public extension Vec4D {
	static func += (left: inout Vec4D, right: Vec4D) {
        left = left + right
    }
    
	static func -= (left: inout Vec4D, right: Vec4D) {
        left = left - right
    }
    
	static func *= (left: inout Vec4D, right: Vec4D) {
        left = left * right
    }
    
	static func /= (left: inout Vec4D, right: Vec4D) {
        left = left / right
    }
}


// MARK: - Equality operator - 等価演算子

public extension Vec4D {
	static func == (left: Vec4D, right: Vec4D) -> Bool {
        return (left.x == right.x) && (left.y == right.y) && (left.z == right.z) && (left.w == right.w)
    }
	static func != (left: Vec4D, right: Vec4D) -> Bool {
        return !(left == right)
    }
}


// MARK: - Utils

public extension Vec3D {
}


// MARK: - Convert

public extension Vec2D {
}
