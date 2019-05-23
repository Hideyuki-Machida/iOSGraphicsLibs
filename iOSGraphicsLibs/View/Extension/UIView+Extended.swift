//
//  UIView+Extended.swift
//  iOSGraphicsLibs
//
//  Created by hideyuki machida on 2018/08/16.
//  Copyright © 2018 hideyuki machida. All rights reserved.
//

import UIKit

extension UIView {
    public func attachSubview(_ view: UIView) {
        self.addSubview(view)
		
		view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
		self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
		
        self.addConstraints(NSLayoutConstraint.constraints(
			withVisualFormat: "H:|-0-[view]-0-|",
			options: NSLayoutConstraint.FormatOptions(rawValue: 0),
            metrics: nil,
            views: ["view" : view])
		)
        
        self.addConstraints(NSLayoutConstraint.constraints(
			withVisualFormat: "V:|-0-[view]-0-|",
			options: NSLayoutConstraint.FormatOptions(rawValue: 0),
            metrics: nil,
            views: ["view" : view]))
    }

	
	public func getScreenShot() -> UIImage {
		
		let size: CGSize = self.bounds.size
		
		//context処理開始
		UIGraphicsBeginImageContextWithOptions(size, false, 0.0);
		
		//context用意
		let context: CGContext = UIGraphicsGetCurrentContext()!;
		
		//contextにスクリーンショットを書き込む
		layer.render(in: context);
		
		//contextをUIImageに書き出す
		let capturedImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()!;
		
		//context処理終了
		UIGraphicsEndImageContext();
		
		//UIImageをreturn
		return capturedImage;
	}
}
