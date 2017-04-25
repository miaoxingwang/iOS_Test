//
//  ViewController.swift
//  iOS_Test01
//
//  Created by Miaoxingwang@qq.com on 17/4/25.
//  Copyright © 2017年 miaoxingwang@qq.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController{
    private func setup(){
        let tap = UITapGestureRecognizer(target: self, action: "tap")
        view.addGestureRecognizer(tap)
    }
}

extension ViewController{
    @objc private func tap(){
        self.view.backgroundColor = colorRandom()
    }
    
    private func colorRandom() -> UIColor{
        let red = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
        let green = CGFloat( arc4random_uniform(255))/CGFloat(255.0)
        let blue = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
        return UIColor(red:red, green:green, blue:blue , alpha: 1)
    }
}

