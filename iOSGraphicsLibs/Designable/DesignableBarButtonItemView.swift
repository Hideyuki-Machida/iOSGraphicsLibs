//
//  DesignableUIBarButtonItemView.swift
//  iOSGraphicsLibs
//
//  Created by 町田 秀行 on 2018/09/07.
//  Copyright © 2018年 hideyuki machida. All rights reserved.
//

import UIKit

@IBDesignable public class DesignableUIBarButtonItem: UIBarButtonItem {
	@IBInspectable public var fontName: String = "" {
		didSet {
			self.setFont()
		}
	}

	@IBInspectable public var size: CGFloat = 12.0 {
        didSet {
			self.setFont()
        }
    }
	
	private func setFont() {
		var font = UIFont.init(name: self.fontName, size: self.size)
		if font == nil {
			font = UIFont.systemFont(ofSize: self.size)
		}
		self.setTitleTextAttributes([NSAttributedString.Key.font: font!], for: UIControl.State.normal)
		self.setTitleTextAttributes([NSAttributedString.Key.font: font!], for: UIControl.State.highlighted)
	}
}
