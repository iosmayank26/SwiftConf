//
//  BaseViewController.swift
//  SwiftConf
//
//  Created by Mayank Gupta on 01/02/23.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewWillLayoutSubviews() {
        print("Running ViewWillLayoutSubviews")
    }

    override func viewDidLayoutSubviews() {
        print("Running ViewDidLayoutSubviews")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Running ViewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Running ViewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Running ViewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Running ViewWillDisappear")
    }
    
    

}
