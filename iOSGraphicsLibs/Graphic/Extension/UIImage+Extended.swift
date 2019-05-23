//
//  UIImage+Extended.swift
//  iOSGraphicsLibs
//
//  Created by hideyuki machida on 2018/08/11.
//  Copyright © 2018 hideyuki machida. All rights reserved.
//

import UIKit

extension UIImage {
    public func resize(size: CGSize) -> UIImage? {
        let resultSize: CGSize
        if self.size.width >= self.size.height {
            let scale: CGFloat = size.width / self.size.width
            resultSize = CGSize.init(width: size.width, height: self.size.height * scale)
        } else {
            let scale: CGFloat = size.height / self.size.height
			resultSize = CGSize.init(width: self.size.width * scale, height: size.height)
        }
        UIGraphicsBeginImageContext(resultSize)
        let drawRect: CGRect = CGRect.init(origin: CGPoint.zero, size: resultSize)
        self.draw(in: drawRect)
        let resizeImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return resizeImage
    }
}
