//
//  Vec2D.swift
//  iOSGraphicsLibs
//
//  Created by hideyuki machida on 2018/07/30.
//  Copyright © 2018 hideyuki machida. All rights reserved.
//

import Foundation

public struct Vec2D {
    var x: Float
    var y: Float

    public init(x: Float = 0.0, y: Float = 0.0) {
        self.x = x
        self.y = y
    }
}


// MARK: - initialize

public extension Vec2D {
	init() {
        self.x = 0.0
        self.y = 0.0
    }

	init(_ x: Float, _ y: Float) {
        self.x = x
        self.y = y
    }
}


// MARK: - CustomPlaygroundDisplayConvertible

extension Vec2D: CustomPlaygroundDisplayConvertible {
    public var playgroundDescription: Any {
        return (x: self.x, y: self.y)
        //return "Vec2D(x: \(self.x), y: \(self.y))"
    }
}


// MARK: - Basic operator - 演算子

public extension Vec2D {
	static func + (left: Vec2D, right: Float) -> Vec2D {
        return Vec2D(x: left.x + right, y: left.y + right)
    }
    
	static func - (left: Vec2D, right: Float) -> Vec2D {
        return Vec2D(x: left.x - right, y: left.y - right)
    }
    
	static func * (left: Vec2D, right: Float) -> Vec2D {
        return Vec2D(x: left.x * right, y: left.y * right)
    }
    
	static func / (left: Vec2D, right: Float) -> Vec2D {
        return Vec2D(x: left.x / right, y: left.y / right)
    }
}

public extension Vec2D {
	static func + (left: Vec2D, right: Vec2D) -> Vec2D {
        return Vec2D(x: left.x + right.x, y: left.y + right.y)
    }
    
	static func - (left: Vec2D, right: Vec2D) -> Vec2D {
        return Vec2D(x: left.x - right.x, y: left.y - right.y)
    }
    
	static func * (left: Vec2D, right: Vec2D) -> Vec2D {
        return Vec2D(x: left.x * right.x, y: left.y * right.y)
    }
    
	static func / (left: Vec2D, right: Vec2D) -> Vec2D {
        return Vec2D(x: left.x / right.x, y: left.y / right.y)
    }
}


// MARK: - Prefix operator - 前置演算子

public extension Vec2D {
	static prefix func + (left: Vec2D) -> Vec2D {
        return Vec2D(x: +left.x, y: +left.y)
    }
    
	static prefix func - (left: Vec2D) -> Vec2D {
        return Vec2D(x: -left.x, y: -left.y)
    }
}


// MARK: - Compound assignment operator - 複合代入演算子

public extension Vec2D {
	static func += (left: inout Vec2D, right: Float) {
        left = left + right
    }
    
	static func -= (left: inout Vec2D, right: Float) {
        left = left - right
    }
    
	static func *= (left: inout Vec2D, right: Float) {
        left = left * right
    }
    
	static func /= (left: inout Vec2D, right: Float) {
        left = left / right
    }
}

public extension Vec2D {
	static func += (left: inout Vec2D, right: Vec2D) {
        left = left + right
    }
    
	static func -= (left: inout Vec2D, right: Vec2D) {
        left = left - right
    }
    
	static func *= (left: inout Vec2D, right: Vec2D) {
        left = left * right
    }
    
	static func /= (left: inout Vec2D, right: Vec2D) {
        left = left / right
    }
}


// MARK: - Equality operator - 等価演算子

public extension Vec2D {
	static func == (left: Vec2D, right: Vec2D) -> Bool {
        return (left.x == right.x) && (left.y == right.y)
    }
	static func != (left: Vec2D, right: Vec2D) -> Bool {
        return !(left == right)
    }
}


// MARK: - Utils

public extension Vec2D {
	func distance(point: Vec2D) -> Float {
        return Vec2D.distance(point1: self, point2: point)
    }
    
	static func distance(point1: Vec2D, point2: Vec2D) -> Float {
        let xDist: Float = point2.x - point1.x
        let yDist: Float = point2.y - point1.y
        return sqrt((xDist * xDist) + (yDist * yDist))
    }
}


// MARK: - Convert

public extension Vec2D {
	func toCGPoint() -> CGPoint {
        return CGPoint(x: CGFloat(self.x), y: CGFloat(self.y))
    }
	func toCGSize() -> CGSize {
        return CGSize(width: CGFloat(self.x), height: CGFloat(self.y))
    }
}
