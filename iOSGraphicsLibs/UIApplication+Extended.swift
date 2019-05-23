//
//  UIApplication+Extended.swift
//  iOSGraphicsLibs
//
//  Created by hideyuki machida on 2019/04/21.
//  Copyright © 2019 hideyuki machida. All rights reserved.
//

import Foundation

public extension UIApplication {
	class func topViewController(controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
		if let navigationController = controller as? UINavigationController {
			return topViewController(controller: navigationController.visibleViewController)
		}
		if let tabController = controller as? UITabBarController {
			if let selected = tabController.selectedViewController {
				return topViewController(controller: selected)
			}
		}
		if let presented = controller?.presentedViewController {
			return topViewController(controller: presented)
		}
		return controller
	}
}
