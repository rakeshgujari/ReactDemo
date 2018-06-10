//
//  ReactBO.swift
//  ReactDemo
//
//  Created by Rakesh Gujari on 11/06/18.
//  Copyright © 2018 Rakesh Gujari. All rights reserved.
//

import UIKit

class ReactBO : NSObject {

    static let `default` = ReactBO()
    
    private override init() {}
    
    func saveData(_ value: String, handler: (Bool) -> Void) {
        AppConstants.Value.transferredValue = value
        handler(true)
    }
    
    func getData() -> String {
        return AppConstants.Value.transferredValue
    }
    
}
