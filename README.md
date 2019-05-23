# iOSGraphicsLibs

[![Swift 5.0](https://img.shields.io/badge/Swift-5.0-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![Platforms iOS](https://img.shields.io/badge/Platforms-iOS-lightgray.svg?style=flat)](https://developer.apple.com/swift/)
[![Xcode 10.2+](https://img.shields.io/badge/Xcode-10.2+-blue.svg?style=flat)](https://developer.apple.com/swift/)


## 概要

このフレームワークは、iOS・UIKitにおけるグラフィックやアニメーションの実装を簡単に行うことを目的としています。


## Color Extention
hexでの色定義などができます。

Example: [Color.playground](https://github.com/Hideyuki-Machida/iOSGraphicsLibs/tree/master/Example/Color.playground)

## Animator
Tweenアニメーションを実装できます。

Example: [AnimatorExample.swift](https://github.com/Hideyuki-Machida/iOSGraphicsLibs/blob/master/Example/iOSGraphicsLibsExample/AnimatorExample.swift)


## Designable
Storybord上でViewやButtonに装飾を行いプレビューできます。

使用するには、viewにCustomClassを設定する必要があります。

* DesignableView.swift
* DesignableButton.swift
* DesignableImageView.swift

Example: [Main.storyboard](https://github.com/Hideyuki-Machida/iOSGraphicsLibs/blob/master/Example/iOSGraphicsLibsExample/Base.lproj/Main.storyboard)


## LocalizedLabel
Storybord上でLocalizedTextを設定できます。

使用するには、viewにCustomClassを設定する必要があります。

* LocalizedLabel.swift
* LocalizedButton.swift

LocalizedTextを使用するには、LocalizedController に Localized.stringが存在するBundleを設定する必要があります。

```
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
	iOSGraphicsLibs.LocalizedController.sorceBundles.append(Bundle(for: type(of: self)))
	return true
}

```

Example: [Main.storyboard](https://github.com/Hideyuki-Machida/iOSGraphicsLibs/blob/master/Example/iOSGraphicsLibsExample/Base.lproj/Main.storyboard)
