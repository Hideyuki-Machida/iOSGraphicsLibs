//
//  Debug.swift
//  iOSGraphicsLibs
//
//  Created by hideyuki machida on 2018/08/19.
//  Copyright © 2018 hideyuki machida. All rights reserved.
//

import Foundation

public class Debug {
    static let ESCAPE = "\u{001b}["
    
    static let RESET_FG = ESCAPE + "fg;" // Clear any foreground color
    static let RESET_BG = ESCAPE + "bg;" // Clear any background color
    static let RESET = ESCAPE + ";"   // Clear any foreground or background color
    
    static public func NetworkRequestLog<T>(_ object: T) {
        func log<T>(_ object: T) {
            print("\(ESCAPE)fg0,255,0;\(object)\(RESET)")
        }
        #if RELEASE
        #else
        log(object)
        #endif
    }
    static public func SuccessLog<T>(_ object: T) {
        func log<T>(_ object: T) {
            print("\(ESCAPE)fg0,255,255;🔵🔵🔵\(object)🔵🔵🔵\(RESET)")
        }
        #if RELEASE
        #else
        log(object)
        #endif
    }
    static public func ErrorLog<T>(_ object: T) {
        func log<T>(_ object: T) {
            print("\(ESCAPE)fg255,0,0;❌❌❌\(object)❌❌❌\(RESET)")
        }
        #if RELEASE
        #else
        log(object)
        #endif
    }
    static public func ActionLog<T>(_ object: T) {
        func log<T>(_ object: T) {
            print("\(ESCAPE)fg255,165,0;🍑🍑🍑\(object)🍑🍑🍑\(RESET)")
        }
        #if RELEASE
        #else
        log(object)
        #endif
    }
    static public func DeinitLog<T>(_ object: T) {
        func log<T>(_ object: T) {
            print("\(ESCAPE)fg0,255,255;🍏🍏🍏deinit: \(type(of: object))🍏🍏🍏\(RESET)")
        }
        #if RELEASE
        #else
        log(object)
        #endif
    }
	
	static public func dumpLog<T>(_ object: T) {
		func log<T>(_ object: T) {
			dump(object)
		}
		#if RELEASE
		#else
		log(object)
		#endif
	}

}
