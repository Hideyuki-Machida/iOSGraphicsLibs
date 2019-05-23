//
//  LocalizedButton.swift
//  iOSGraphicsLibs
//
//  Created by hideyuki machida on 2018/08/10.
//  Copyright © 2018 hideyuki machida. All rights reserved.
//

import UIKit

open class LocalizedButton: UIButton {
    
    @IBInspectable open var bundleIndex: Int = 0
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        
        guard let titleText: String = self.titleLabel?.text else {
            Debug.ErrorLog("Empty NSLocalizedString")
            return
        }
        
        if LocalizedController.sorceBundles.indices.contains(bundleIndex) {
            let bundle: Bundle = LocalizedController.sorceBundles[bundleIndex]
            let localizedString: String = NSLocalizedString(titleText, tableName: nil, bundle: bundle, value: "", comment: "")
            if localizedString != titleText {
                self.setTitle(localizedString, for: .normal)
            } else {
                Debug.ErrorLog("No Such NSLocalizedString: \(titleText)")
                self.setTitle(localizedString, for: .normal)
            }
        } else {
            return
        }
        
    }
}
