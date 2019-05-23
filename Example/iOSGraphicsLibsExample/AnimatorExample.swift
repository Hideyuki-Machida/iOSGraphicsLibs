
//
//  AnimatorExample.swift
//  iOSGraphicsLibsExample
//
//  Created by hideyuki machida on 2019/05/23.
//  Copyright © 2019 hideyuki machida. All rights reserved.
//

import UIKit
import iOSGraphicsLibs

class AnimatorExample: UIViewController {
	
	@IBOutlet weak var sampleView: UIView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	@IBAction func tapAction(_ sender: Any) {
		let animator: iOSGraphicsLibs.Animator = iOSGraphicsLibs.Animator.init(time: 1000, before: 1, after: 0.1, easing: Animator.Easing.easeOutBounce)
		animator.addUpdate { [weak self] (value: Float) in
			self?.sampleView.transform = CGAffineTransform.identity.scaledBy(x: CGFloat(value), y: CGFloat(value))
		}
		animator.addCompletion { [weak self] (value: Float) in
			self?.sampleView.transform = CGAffineTransform.identity.scaledBy(x: CGFloat(value), y: CGFloat(value))
		}
		animator.start()
	}
	
}
