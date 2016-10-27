//
//  WindowViewController.swift
//  SwiftMessages
//
//  Created by Timothy Moose on 8/1/16.
//  Copyright © 2016 SwiftKick Mobile LLC. All rights reserved.
//

import UIKit

class WindowViewController: UIViewController
{
    fileprivate var window: UIWindow?
    
    let windowLevel: UIWindowLevel
    let config: SwiftMessages.Config
    
    override var shouldAutorotate: Bool {
        return config.shouldAutorotate
    }
    
    init(windowLevel: UIWindowLevel = UIWindowLevelNormal, config: SwiftMessages.Config)
    {
        self.windowLevel = windowLevel
        self.config = config
        let window = PassthroughWindow(frame: UIScreen.main.bounds)
        self.window = window
        super.init(nibName: nil, bundle: nil)
        self.view = PassthroughView()
        window.rootViewController = self
        window.windowLevel = windowLevel
    }
    
    func install() {
        guard let window = window else { return }
        //window.makeKeyAndVisible()    //如果使用这个会导致之前的窗口键盘自动回收
        window.isHidden = false
    }
    
    func uninstall() {
        window?.isHidden = true
        window = nil
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public var preferredStatusBarStyle: UIStatusBarStyle {
        return config.preferredStatusBarStyle ?? UIApplication.shared.statusBarStyle
    }
    
    override var prefersStatusBarHidden: Bool {
        return UIApplication.shared.isStatusBarHidden
    }
}
