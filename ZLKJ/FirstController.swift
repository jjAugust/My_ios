//
//  ViewController.swift
//  ZLKJ
//
//  Created by 熊俊杰 on 2017/3/1.
//  Copyright © 2017年 熊俊杰. All rights reserved.
//

import UIKit
import Material

class FirstController: UIViewController {
    var nexttext:String?
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        prepareTabBarItem()
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Color.black
    }
    
    private func prepareTabBarItem() {
        tabBarItem.title = nil
        tabBarItem.image = Icon.cm.audioLibrary?.tint(with: Color.blueGrey.base)
        tabBarItem.selectedImage = Icon.cm.audioLibrary?.tint(with: Color.blue.base)
    }

}

