import UIKit
import iOSGraphicsLibs

func testVec2DExtended() {
    Vec2D.init()
    let vec2D001 = Vec2D.init(10, 10)
    let vec2D002 = vec2D001 + 20
    vec2D001 + vec2D002 * 20 / 10 - 5

    var vec2D003 = Vec2D.init(10, 10)
    vec2D003 *= 2
    vec2D003 += vec2D001
    
    Vec2D.distance(point1: Vec2D.init(), point2: Vec2D.init(x: 10, y: 0))
    Vec2D.distance(point1: Vec2D.init(), point2: Vec2D.init(x: 10, y: 10))
    Vec2D.distance(point1: Vec2D.init(x: 10, y: 0), point2: Vec2D.init())
    Vec2D.distance(point1: Vec2D.init(x: 10, y: 10), point2: Vec2D.init())
    Vec2D.distance(point1: vec2D001, point2: vec2D002)
    
    Vec2D.init(x: 10, y: 0).distance(point: Vec2D.init())
    Vec2D.init().distance(point: Vec2D.init(x: 10, y: 0))
    
    Vec2D.init(10, 10) == Vec2D.init(10, 10)
    Vec2D.init(10, 10) == Vec2D.init(10, 9)
    Vec2D.init(10, 10) != Vec2D.init(10, 10)
    Vec2D.init(10, 10) != Vec2D.init(10, 9)
}
testVec2DExtended()
