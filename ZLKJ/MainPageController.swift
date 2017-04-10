//
//  ViewController.swift
//  ZLKJ
//
//  Created by 熊俊杰 on 2017/3/1.
//  Copyright © 2017年 熊俊杰. All rights reserved.
//

import UIKit

class MainPageController: UIViewController {
    var window: UIWindow?
    
    @IBOutlet weak var sv: UIScrollView!
    @IBOutlet weak var pc: UIPageControl!
    
    var timer:Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...6{ //loading the images
            //UIImageView(UIImage(named:""))!

            let image = UIImage(named: "\(i).jpg")!
            let x = CGFloat(i-1) * sv.bounds.width //这一步获取ScrollView的宽度时我用IPHONE6实体机测试是320，右边会出现第二张图片的一部分，最后还是用ROOT VIEW的宽度
            let imageView = UIImageView(frame:CGRect(origin: CGPoint(x: x,y :0), size: CGSize(width:sv.bounds.width, height:sv.bounds.height)))
            imageView.image = image
            sv.isPagingEnabled = true
            sv.showsHorizontalScrollIndicator = false
            sv.isScrollEnabled = true
            sv.addSubview(imageView)
        }
        
        sv.contentSize = CGSize(width:(sv.bounds.width * 6), height:sv.frame.height)
        pc.numberOfPages = 6
        pc.currentPageIndicatorTintColor = UIColor.red
        pc.pageIndicatorTintColor = UIColor.white
        addTimer()
        
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let width = self.view.frame.width
        let offsetX = scrollView.contentOffset.x
        let index = (offsetX + width / 2) / width
        pc.currentPage = Int(index)
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        removeTimer()
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        addTimer()
    }
    
    func addTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MainPageController.nextImage), userInfo: nil, repeats: true)
    }
    
    func removeTimer() {
        timer.invalidate()
    }
    
    
    func nextImage() {
        var pageIndex = pc.currentPage
        if pageIndex == 5 {
            pageIndex = 0
        } else {
            pageIndex += 1
        }
        
        let offsetX = CGFloat(pageIndex) * sv.bounds.width
        sv.setContentOffset(CGPoint(x:offsetX,y: 0), animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

