//
//  ViewController.swift
//  CapsPageMenu
//
//  Created by AFFIXUS IMAC1 on 3/29/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit
import PageMenu

class ViewController: UIViewController, CAPSPageMenuDelegate {
    
    @IBOutlet weak var redView: UIView!
    
    var aPageMenu : CAPSPageMenu?

    override func viewDidLoad() {
        super.viewDidLoad()
         self.view.addSubview(redView)
        
        var controllerArray : [UIViewController] = []
        
        let profileVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vc1")
       profileVC.title = "VC 1"
        controllerArray.append(profileVC)
        
        let scheduleVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vc2")
        scheduleVC.title = "VC 2"
        controllerArray.append(scheduleVC)
        
        let parameters: [CAPSPageMenuOption] = [
            .menuItemSeparatorWidth(4.3),
            .useMenuLikeSegmentedControl(true),
            .menuItemSeparatorPercentageHeight(0.1)
        ]
        
        aPageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0.0,y: 0.0, width: self.view.frame.width,height: self.view.frame.height), pageMenuOptions: parameters)
        aPageMenu!.delegate = self
        self.view.addSubview(aPageMenu!.view)
//
//        viewControllers: controllerArray, frame: CGRectMake(0.0, 0.0, self.view.frame.width, self.view.frame.height), pageMenuOptions: parameters
    
    }

}

