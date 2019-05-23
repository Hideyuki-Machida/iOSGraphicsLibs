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
    public static func easeLinear (t: Float, b: Float, c: Float, d: Float) -> Float {
        return c * t / d + b;
    }
}
