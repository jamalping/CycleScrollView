//
//  ViewController.swift
//  CycleScrollView
//
//  Created by jamalping on 15/12/10.
//  Copyright © 2015年 jamalping. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
        let tap = UITapGestureRecognizer.init(target: self, action: "tapAction:")
        self.view.addGestureRecognizer(tap)
        self.view.tag = 1
        
        let cycleScrollView = CycleScrollView.init(frame: CGRectMake(0, 100, self.view.width, 300), animationTimerInterVal: 2)
        cycleScrollView.dataSource = ["1","2","3"]
        self.view.addSubview(cycleScrollView)
        
    }
    func tapAction(tap:UITapGestureRecognizer) {
        
        print(tap.view?.tag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

