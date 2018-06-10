//
//  ReactBridge.swift
//  ReactDemo
//
//  Created by Rakesh Gujari on 10/06/18.
//  Copyright © 2018 Rakesh Gujari. All rights reserved.
//

import UIKit
import React

let localUrl = "http://localhost:8081/index.bundle?platform=ios&dev=true"
let forHotReloading = false

class ReactBridge: NSObject {
    static let shared = ReactBridge()
}

extension ReactBridge: RCTBridgeDelegate {
    func sourceURL(for bridge: RCTBridge!) -> URL! {
        return URL(string: localUrl)
    }
    
    func createBridgeIfNeeded() -> RCTBridge {
        let bridge = RCTBridge.init(delegate: self, launchOptions: nil)
        return bridge ?? RCTBridge()
    }
    
    func viewForModule(_ moduleName: String, initialProperties: [String : Any]?) -> RCTRootView {
        if forHotReloading {
            let viewBridge = createBridgeIfNeeded()
            let rootView: RCTRootView = RCTRootView(
                bridge: viewBridge,
                moduleName: moduleName,
                initialProperties: initialProperties)
            return rootView
        } else {
            if let iosBundle = Bundle.main.url(forResource: "main", withExtension: "jsbundle") {
                guard let bundleRootView = RCTRootView(bundleURL: iosBundle, moduleName: moduleName, initialProperties: initialProperties, launchOptions: nil) else { return RCTRootView() }
                return bundleRootView
            }
        }
        return RCTRootView()
    }
}
