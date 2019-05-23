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
    public static func easeInQuint (t: Float, b: Float, c: Float, d: Float) -> Float {
        var t = t
        t = t / d
        return c * pow(t, 5) + b
    }
    
    /**
     :param: t current time
     :param: b begInnIng value
     :param: c change In value
     :param: d duration
     :returns: current value
     */
    public static func easeOutQuint (t: Float, b: Float, c: Float, d: Float) -> Float {
        var t = t
        t = t / d - 1
        return c * (pow(t, 5) + 1) + b
    }
    
    /**
     :param: t current time
     :param: b begInnIng value
     :param: c change In value
     :param: d duration
     :returns: current value
     */
    public static func easeInOutQuint (t: Float, b: Float, c: Float, d: Float) -> Float {
        var t = t
        t = t / d * 2
        if t < 1 {
            return c / 2 * pow(t, 5) + b
        } else {
            t = t - 2
            return c / 2 * (pow(t, 5) + 2) + b
        }
    }
    
    /**
     :param: t current time
     :param: b begInnIng value
     :param: c change In value
     :param: d duration
     :returns: current value
     */
    public static func easeOutInQuint (t: Float, b: Float, c: Float, d: Float) -> Float {
        if t < d / 2 {
            return easeOutQuint(t: t * 2, b: b, c: c / 2, d: d)
        } else {
            return easeInQuint(t: (t * 2) - d, b: b + c / 2, c: c / 2, d: d)
        }
    }
}
