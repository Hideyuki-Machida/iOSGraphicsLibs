//
//  Vec3D.swift
//  iOSGraphicsLibs
//
//  Created by hideyuki machida on 2018/07/30.
//  Copyright © 2018 hideyuki machida. All rights reserved.
//

import Foundation

public struct Vec3D {
    var x: Float
    var y: Float
    var z: Float
    
    public init(x: Float = 0.0, y: Float = 0.0, z: Float = 0.0) {
        self.x = x
        self.y = y
        self.z = z
    }
}


// MARK: - initialize

public extension Vec3D {
	init() {
        self.x = 0.0
        self.y = 0.0
        self.z = 0.0
    }
    
	init(_ x: Float, _ y: Float, _ z: Float) {
        self.x = x
        self.y = y
        self.z = z
    }
}


// MARK: - CustomPlaygroundDisplayConvertible

extension Vec3D: CustomPlaygroundDisplayConvertible {
    public var playgroundDescription: Any {
        return (x: self.x, y: self.y, z: self.z)
    }
}


// MARK: - Basic operator - 演算子

public extension Vec3D {
	static func + (left: Vec3D, right: Float) -> Vec3D {
        return Vec3D(x: left.x + right, y: left.y + right, z: left.z + right)
    }
    
	static func - (left: Vec3D, right: Float) -> Vec3D {
        return Vec3D(x: left.x - right, y: left.y - right, z: left.z - right)
    }
    
	static func * (left: Vec3D, right: Float) -> Vec3D {
        return Vec3D(x: left.x * right, y: left.y * right, z: left.z * right)
    }
    
	static func / (left: Vec3D, right: Float) -> Vec3D {
        return Vec3D(x: left.x / right, y: left.y / right, z: left.z / right)
    }
}

public extension Vec3D {
	static func + (left: Vec3D, right: Vec3D) -> Vec3D {
        return Vec3D(x: left.x + right.x, y: left.y + right.y, z: left.z + right.z)
    }
    
	static func - (left: Vec3D, right: Vec3D) -> Vec3D {
        return Vec3D(x: left.x - right.x, y: left.y - right.y, z: left.z - right.z)
    }

	static func * (left: Vec3D, right: Vec3D) -> Vec3D {
        return Vec3D(x: left.x * right.x, y: left.y * right.y, z: left.z * right.z)
    }

	static func / (left: Vec3D, right: Vec3D) -> Vec3D {
        return Vec3D(x: left.x / right.x, y: left.y / right.y, z: left.z / right.z)
    }
}


// MARK: - Prefix operator - 前置演算子

public extension Vec3D {
	static prefix func + (left: Vec3D) -> Vec3D {
        return Vec3D(x: +left.x, y: +left.y, z: +left.z)
    }
    
	static prefix func - (left: Vec3D) -> Vec3D {
        return Vec3D(x: -left.x, y: -left.y, z: -left.z)
    }
}


// MARK: - Compound assignment operator - 複合代入演算子

public extension Vec3D {
	static func += (left: inout Vec3D, right: Float) {
        left = left + right
    }
    
	static func -= (left: inout Vec3D, right: Float) {
        left = left - right
    }
    
	static func *= (left: inout Vec3D, right: Float) {
        left = left * right
    }
    
	static func /= (left: inout Vec3D, right: Float) {
        left = left / right
    }
}

public extension Vec3D {
	static func += (left: inout Vec3D, right: Vec3D) {
        left = left + right
    }
    
	static func -= (left: inout Vec3D, right: Vec3D) {
        left = left - right
    }
    
	static func *= (left: inout Vec3D, right: Vec3D) {
        left = left * right
    }
    
	static func /= (left: inout Vec3D, right: Vec3D) {
        left = left / right
    }
}


// MARK: - Equality operator - 等価演算子

public extension Vec3D {
	static func == (left: Vec3D, right: Vec3D) -> Bool {
        return (left.x == right.x) && (left.y == right.y) && (left.z == right.z)
    }
	static func != (left: Vec3D, right: Vec3D) -> Bool {
        return !(left == right)
    }
}


// MARK: - Utils

public extension Vec3D {
}


// MARK: - Convert

public extension Vec2D {
}
