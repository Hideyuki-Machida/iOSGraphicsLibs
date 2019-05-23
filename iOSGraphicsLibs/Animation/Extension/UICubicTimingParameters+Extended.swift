//
//  UICubicTimingParameters+Extended.swift
//  iOSGraphicsLibs
//
//  Created by hideyuki machida on 2018/07/30.
//  Copyright © 2018 hideyuki machida. All rights reserved.
//

import Foundation

public extension UICubicTimingParameters {
    
	enum Easing {
        case easeInSine
        case easeOutSine
        case easeInOutSine
        case easeInQuad
        case easeOutQuad
        case easeInOutQuad
        case easeInCubic
        case easeOutCubic
        case easeInOutCubic
        case easeInQuart
        case easeOutQuart
        case easeInOutQuart
        case easeInQuint
        case easeOutQuint
        case easeInOutQuint
        case easeInExpo
        case easeOutExpo
        case easeInOutExpo
        case easeInCirc
        case easeOutCirc
        case easeInOutCirc
        case easeInBack
        case easeOutBack
        case easeInOutBack
        
        public var param: UICubicTimingParameters {
            switch self {
            case .easeInSine: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.47, y: 0), controlPoint2: CGPoint.init(x: 0.745, y: 0.715))
            case .easeOutSine: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.39, y: 0.575), controlPoint2: CGPoint.init(x: 0.565, y: 1))
            case .easeInOutSine: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.445, y: 0.05), controlPoint2: CGPoint.init(x: 0.55, y: 0.95))
                
            case .easeInQuad: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.55, y: 0.085), controlPoint2: CGPoint.init(x: 0.68, y: 0.53))
            case .easeOutQuad: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.25, y: 0.46), controlPoint2: CGPoint.init(x: 0.45, y: 0.94))
            case .easeInOutQuad: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.455, y: 0.03), controlPoint2: CGPoint.init(x: 0.515, y: 0.955))
                
            case .easeInCubic: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.55, y: 0.055), controlPoint2: CGPoint.init(x: 0.675, y: 0.19))
            case .easeOutCubic: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.215, y: 0.61), controlPoint2: CGPoint.init(x: 0.355, y: 1))
            case .easeInOutCubic: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.645, y: 0.045), controlPoint2: CGPoint.init(x: 0.355, y: 1))
                
            case .easeInQuart: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.895, y: 0.03), controlPoint2: CGPoint.init(x: 0.685, y: 0.22))
            case .easeOutQuart: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.165, y: 0.84), controlPoint2: CGPoint.init(x: 0.44, y: 1))
            case .easeInOutQuart: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.77, y: 0), controlPoint2: CGPoint.init(x: 0.175, y: 1))
                
            case .easeInQuint: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.755, y: 0.05), controlPoint2: CGPoint.init(x: 0.855, y: 0.06))
            case .easeOutQuint: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.23, y: 1), controlPoint2: CGPoint.init(x: 0.32, y: 1))
            case .easeInOutQuint: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.86, y: 0), controlPoint2: CGPoint.init(x: 0.07, y: 1))
                
            case .easeInExpo: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.95, y: 0.05), controlPoint2: CGPoint.init(x: 0.795, y: 0.035))
            case .easeOutExpo: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.19, y: 1), controlPoint2: CGPoint.init(x: 0.22, y: 1))
            case .easeInOutExpo: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 1, y: 0), controlPoint2: CGPoint.init(x: 0, y: 1))
                
            case .easeInCirc: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.6, y: 0.04), controlPoint2: CGPoint.init(x: 0.98, y: 0.335))
            case .easeOutCirc: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.075, y: 0.82), controlPoint2: CGPoint.init(x: 0.165, y: 1))
            case .easeInOutCirc: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.785, y: 0.135), controlPoint2: CGPoint.init(x: 0.15, y: 0.86))
                
            case .easeInBack: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.6, y: -0.28), controlPoint2: CGPoint.init(x: 0.735, y: 0.045))
            case .easeOutBack: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.175, y: 0.885), controlPoint2: CGPoint.init(x: 0.32, y: 1.275))
            case .easeInOutBack: return UICubicTimingParameters.init(controlPoint1: CGPoint.init(x: 0.68, y: -0.55), controlPoint2: CGPoint.init(x: 0.265, y: 1.55))
            }
        }
    }
}

