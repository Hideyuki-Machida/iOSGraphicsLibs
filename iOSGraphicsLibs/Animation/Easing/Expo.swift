//  Reference resource:
//  http://www.robertpenner.com/easing/
//
//  License:
//  http://www.robertpenner.com/easing_terms_of_use.html

import Foundation

extension EasingFunc {
    /**
     :param: t current time
     :param: b begInnIng value
     :param: c change In value
     :param: d duration
     :returns: current value
     */
    public static func easeInExpo (t: Float, b: Float, c: Float, d: Float) -> Float {
        if t == 0 {
            return b
        } else {
            return c * pow(2, 10 * (t / d - 1)) + b - c * 0.001
        }
    }
    
    /**
     :param: t current time
     :param: b begInnIng value
     :param: c change In value
     :param: d duration
     :returns: current value
     */
    public static func easeOutExpo (t: Float, b: Float, c: Float, d: Float) -> Float {
        if t == d {
            return b + c
        } else {
            return c * 1.001 * (-pow(2, -10 * t / d) + 1) + b
        }
    }
    
    /**
     :param: t current time
     :param: b begInnIng value
     :param: c change In value
     :param: d duration
     :returns: current value
     */
    public static func easeInOutExpo (t: Float, b: Float, c: Float, d: Float) -> Float {
        if t == 0 { return b }
        if t == d { return b + c }
        var t: Float = t / d * 2
        if t < 1 {
            return c / 2 * pow(2, 10 * (t - 1)) + b - c * 0.0005
        } else {
            t = t - 1
            return c / 2 * 1.0005 * (-pow(2, -10 * t) + 2) + b
        }
    }
    
    /**
     :param: t current time
     :param: b begInnIng value
     :param: c change In value
     :param: d duration
     :returns: current value
     */
    public static func easeOutInExpo (t: Float, b: Float, c: Float, d: Float) -> Float {
        if t < d / 2 {
            return easeOutExpo(t: t * 2, b: b, c: c / 2, d: d)
        } else {
            return easeInExpo(t: (t * 2) - d, b: b + c / 2, c: c / 2, d: d)
        }
    }
}
