//
//  DesignableCollectionViewCell.swift
//  iOSGraphicsLibs
//
//  Created by 町田 秀行 on 2018/08/06.
//  Copyright © 2018年 hideyuki machida. All rights reserved.
//

import UIKit

@IBDesignable open class DesignableCollectionViewCell: UICollectionViewCell {
    
    @IBInspectable open var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable open var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable open var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable open var shadowColor: UIColor = UIColor.clear {
        didSet {
            self.layer.shadowColor = shadowColor.cgColor
        }
    }
    
    @IBInspectable open var shadowRadius: CGFloat = 0 {
        didSet {
            self.layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable open var shadowOpacity: CGFloat = 0 {
        didSet {
            self.layer.shadowOpacity = Float(shadowOpacity)
        }
    }
    
    @IBInspectable open var shadowOffsetY: CGFloat = 0 {
        didSet {
            self.layer.shadowOffset.height = shadowOffsetY
        }
    }
    
    /*
    @IBInspectable var topColor: UIColor = UIColor.white
    @IBInspectable var bottomColor: UIColor = UIColor.black
    
    override open class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    override open func layoutSubviews() {
        (layer as! CAGradientLayer).colors = [topColor.cgColor, bottomColor.cgColor]
    }
 */
}
