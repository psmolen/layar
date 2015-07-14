//
//  ARLayarViewController.swift
//  layar
//
//  Created by Patrick Smolen on 7/13/15.
//  Copyright (c) 2015 solstice. All rights reserved.
//

import UIKit

class ARLayarViewController: UIViewController, LayarSDKDelegate {
    
    var layarSDK: LayarSDK

    required init(coder aDecoder: NSCoder) {
        //super.init(coder: aDecoder)
        self.layarSDK = LayarSDK(consumerKey: "", andConsumerSecret: "", andDelegate: nil)
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.layarSDK = LayarSDK(consumerKey: "", andConsumerSecret: "", andDelegate: self)
        let viewController: UIViewController!
        
        self.layarSDK.viewControllerForScanningWithCompletion { (viewController: UIViewController!) -> Void in
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
