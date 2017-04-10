//
//  ViewController.swift
//  ZLKJ
//
//  Created by 熊俊杰 on 2017/3/1.
//  Copyright © 2017年 熊俊杰. All rights reserved.
//

import UIKit

class ViewPage2Controller: UIViewController {
       var window: UIWindow?
    
    @IBAction func login_1(_ sender: AnyObject) {
       self.performSegue(withIdentifier: "login", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

