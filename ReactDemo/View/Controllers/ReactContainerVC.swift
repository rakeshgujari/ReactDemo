//
//  ReactContainerVC.swift
//  ReactDemo
//
//  Created by Rakesh Gujari on 10/06/18.
//  Copyright © 2018 Rakesh Gujari. All rights reserved.
//

import UIKit
import React

class ReactContainerVC: UIViewController {
    
    var rnView : RCTRootView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    //let urlForReact = Bundle.main.url(forResource: "main", withExtension: "jsbundle")
        
    let urlForReact = URL(string: "http://localhost:8081/index.ios.bundle?platform=ios")
        
       rnView = RCTRootView(
            bundleURL: urlForReact!,
            moduleName: "ReactDemo",
            initialProperties: ["text": ReactBO.default.getData()],
            launchOptions: nil)
        self.view.addSubview(rnView)
    }
    
    override func viewDidLayoutSubviews() {
        rnView.frame = self.view.bounds
    }
    
    public func popSelf() {
        self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
