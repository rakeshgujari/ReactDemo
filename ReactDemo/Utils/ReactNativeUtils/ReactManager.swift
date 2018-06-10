//
//  ReactManager.swift
//  ReactDemo
//
//  Created by Rakesh Gujari on 10/06/18.
//  Copyright © 2018 Rakesh Gujari. All rights reserved.
//

import UIKit
import React

@objc(ReactManager) class ReactManager: NSObject {
    var bridge: RCTBridge!
    
    ///Will get called on button click in react native
    @objc func saveNGoBack(_ value: String) {
        DispatchQueue.main.async {
            AppConstants.Value.transferredValue = value
            if let navController = (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController as? UINavigationController {
                navController.popViewController(animated: true)
            }
        }
        
    }
    
}
