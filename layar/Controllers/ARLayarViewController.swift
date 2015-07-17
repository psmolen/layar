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
        self.layarSDK = LayarSDK()
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.layarSDK = LayarSDK(consumerKey: layarKey, andConsumerSecret: layarSecret, andDelegate: self)

    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let viewController: UIViewController!
        
        self.layarSDK.viewControllerForURL(NSURL(string: "layar://"+layarName)) { (viewController: UIViewController!) -> Void in
            
            self.presentViewController(viewController, animated: true, completion: { () -> Void in
                
            })
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    

}
