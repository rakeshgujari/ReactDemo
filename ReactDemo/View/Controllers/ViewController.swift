//
//  ViewController.swift
//  ReactDemo
//
//  Created by Rakesh Gujari on 08/06/18.
//  Copyright © 2018 Rakesh Gujari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sendToReactBtn: UIButton!
    @IBOutlet weak var valueInputField: UITextField!
    @IBOutlet weak var valueFromReactL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    override func viewDidAppear(_ animated: Bool) {
        valueFromReactL.text = "Value from React: \(ReactBO.default.getData())"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //MARK: Button handlers
    @IBAction func sendToReactBtnClicked(_ sender: Any) {
        if(!valueInputField.text!.isEmpty) {
            ReactBO.default.saveData(valueInputField.text!, handler: { (result) in
                if(result) {
                    self.performSegue(withIdentifier: AppConstants.Segue.ReactSegue, sender: self)
                }
            })
        }
    }
    
//     // MARK: - Navigation
//     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if(segue.identifier == AppConstants.Segue.ReactSegue) {
//            if let dvc = segue.destination as? ReactContainerVC {
//                dvc.inputValue = valueInputField.text!
//                valueInputField.text = ""
//            }
//        }
//     }
    


}

