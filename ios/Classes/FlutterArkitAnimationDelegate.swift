//
//  FlutterArkitAnimationDelegate.swift
//  arkit_plugin
//
//  Created by Tom Alabaster on 03/02/2021.
//

import Foundation

class FlutterArkitAnimationDelegate: NSObject, CAAnimationDelegate {
    let didStopCallback: () -> ()
    
    init(_ didStopCallback: @escaping () -> ()) {
        self.didStopCallback = didStopCallback

        super.init()
    }
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        self.didStopCallback()
    }
}
