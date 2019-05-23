//
//  Animator.swift
//  iOSGraphicsLibs
//
//  Created by hideyuki machida on 2018/07/30.
//  Copyright © 2018 hideyuki machida. All rights reserved.
//

import UIKit

public class Animator: NSObject {
    // MARK: - Easin
    public enum Easing: String {
        case easeLinear = "easeLinear"
        case easeInQuad = "easeInQuad"
        case easeOutQuad = "easeOutQuad"
        case easeInOutQuad = "easeInOutQuad"
        case easeOutInQuad = "easeOutInQuad"
        case easeInCubic = "easeInCubic"
        case easeOutCubic = "easeOutCubic"
        case easeInOutCubic = "easeInOutCubic"
        case easeOutInCubic = "easeOutInCubic"
        case easeInQuart = "easeInQuart"
        case easeOutQuart = "easeOutQuart"
        case easeInOutQuart = "easeInOutQuart"
        case easeOutInQuart = "easeOutInQuart"
        case easeInQuint = "easeInQuint"
        case easeOutQuint = "easeOutQuint"
        case easeInOutQuint = "easeInOutQuint"
        case easeOutInQuint = "easeOutInQuint"
        case easeInSine = "easeInSine"
        case easeOutSine = "easeOutSine"
        case easeInOutSine = "easeInOutSine"
        case easeOutInSine = "easeOutInSine"
        case easeInExpo = "easeInExpo"
        case easeOutExpo = "easeOutExpo"
        case easeInOutExpo = "easeInOutExpo"
        case easeOutInExpo = "easeOutInExpo"
        case easeInCirc = "easeInCirc"
        case easeOutCirc = "easeOutCirc"
        case easeInOutCirc = "easeInOutCirc"
        case easeOutInCirc = "easeOutInCirc"
        case easeInElastic = "easeInElastic"
        case easeOutElastic = "easeOutElastic"
        case easeInOutElastic = "easeInOutElastic"
        case easeInBack = "easeInBack"
        case easeOutBack = "easeOutBack"
        case easeInOutBack = "easeInOutBack"
        case easeInBounce = "easeInBounce"
        case easeOutBounce = "easeOutBounce"
        case easeInOutBounce = "easeInOutBounce"
        case easeOutInBounce = "easeOutInBounce"
        
        var easingFunc: (_ t: Float, _ b: Float, _ c: Float, _ d: Float) -> Float {
            switch(self) {
            case Easing.easeLinear: return EasingFunc.easeLinear
            case Easing.easeInQuad: return EasingFunc.easeInQuad
            case Easing.easeOutQuad: return EasingFunc.easeOutQuad
            case Easing.easeInOutQuad: return EasingFunc.easeInOutQuad
            case Easing.easeOutInQuad: return EasingFunc.easeOutInQuad
            case Easing.easeInCubic: return EasingFunc.easeInCubic
            case Easing.easeOutCubic: return EasingFunc.easeOutCubic
            case Easing.easeInOutCubic: return EasingFunc.easeInOutCubic
            case Easing.easeOutInCubic: return EasingFunc.easeOutInCubic
            case Easing.easeInQuart: return EasingFunc.easeInQuart
            case Easing.easeOutQuart: return EasingFunc.easeOutQuart
            case Easing.easeInOutQuart: return EasingFunc.easeInOutQuart
            case Easing.easeOutInQuart: return EasingFunc.easeOutInQuart
            case Easing.easeInQuint: return EasingFunc.easeInQuint
            case Easing.easeOutQuint: return EasingFunc.easeOutQuint
            case Easing.easeInOutQuint: return EasingFunc.easeInOutQuint
            case Easing.easeOutInQuint: return EasingFunc.easeOutInQuint
            case Easing.easeInSine: return EasingFunc.easeInSine
            case Easing.easeOutSine: return EasingFunc.easeOutSine
            case Easing.easeInOutSine: return EasingFunc.easeInOutSine
            case Easing.easeOutInSine: return EasingFunc.easeOutInSine
            case Easing.easeInExpo: return EasingFunc.easeInExpo
            case Easing.easeOutExpo: return EasingFunc.easeOutExpo
            case Easing.easeInOutExpo: return EasingFunc.easeInOutExpo
            case Easing.easeOutInExpo: return EasingFunc.easeOutInExpo
            case Easing.easeInCirc: return EasingFunc.easeInCirc
            case Easing.easeOutCirc: return EasingFunc.easeOutCirc
            case Easing.easeInOutCirc: return EasingFunc.easeInOutCirc
            case Easing.easeOutInCirc: return EasingFunc.easeOutInCirc
            case Easing.easeInElastic: return EasingFunc.easeInElastic
            case Easing.easeOutElastic: return EasingFunc.easeOutElastic
            case Easing.easeInOutElastic: return EasingFunc.easeInOutElastic
            case Easing.easeInBack: return EasingFunc.easeInBack
            case Easing.easeOutBack: return EasingFunc.easeOutBack
            case Easing.easeInOutBack: return EasingFunc.easeInOutBack
            case Easing.easeInBounce: return EasingFunc.easeInBounce
            case Easing.easeOutBounce: return EasingFunc.easeOutBounce
            case Easing.easeInOutBounce: return EasingFunc.easeInOutBounce
            case Easing.easeOutInBounce: return EasingFunc.easeOutInBounce
            }
        }
    }

    fileprivate var displayLink: CADisplayLink?
    fileprivate let easeFunc: (_ t: Float, _ b: Float, _ c: Float, _ d: Float) -> Float
    fileprivate var updates: [(_ value: Float)->Void] = []
    fileprivate var completions: [(_ value: Float)->Void] = []
    
    fileprivate let _st: Double
    fileprivate var _et: Double = 0
    fileprivate var _currentT: Float = 0
    fileprivate let _d: Float
    fileprivate let _b: Float
    fileprivate let _c: Float
    fileprivate let _a: Float
	
    public init(time: Float, before: Float, after: Float, easing: Easing) {
        self.easeFunc = easing.easingFunc
        self._d = time
        self._b = before
        self._c = after - before
		self._a = after
        
        self._st = Date().timeIntervalSince1970
        
        super.init()
    }
    
    deinit {

    }
    
    public func addUpdate(_ update: @escaping (_ value: Float)->Void) {
        self.updates.append(update)
    }
    
    public func addCompletion(_ update: @escaping (_ value: Float)->Void) {
        self.completions.append(update)
    }
    
    public func start() {
        self.startLink()
    }

    public func stop() {
        self.closeLink()
    }

    
    fileprivate func startLink() {
        self.closeLink()
        self.displayLink = CADisplayLink(target: self, selector: #selector(displayLinkDidRefresh))
		self.displayLink?.add(to: RunLoop.main, forMode: RunLoop.Mode.common)
    }
    
    fileprivate func closeLink() {
		self.displayLink?.remove(from: RunLoop.main, forMode: RunLoop.Mode.common)
        self.displayLink?.invalidate()
        self.displayLink = nil
    }
    
    @objc fileprivate func displayLinkDidRefresh() {
        let ct: Double = Date().timeIntervalSince1970
        let t: Float = Float((ct - self._st) * 1000)
        let value: Float = self.easeFunc(t, self._b, self._c, self._d)
        if t >= self._d {
            self.closeLink()
            for i in self.completions {
                i(Float(self._a))
            }
        } else {
            for i in self.updates {
                i(Float(value))
            }
        }
        
        /*
        var t: Float = self._d - Float(self._et - ct)
        
        var isCompleted: Bool = false
        if t >= self._d {
            t = self._d
            self.closeLink()
            isCompleted = true
        }
        
        self._currentT = t
        let value: Float = self.easeFunc(t, self._b, self._c, self._d)
        for i in self.updates {
            i(Float(value))
        }
        if isCompleted == true {
            for i in self.completions {
                i(Float(value))
            }
        }
 */

    }
    
}
